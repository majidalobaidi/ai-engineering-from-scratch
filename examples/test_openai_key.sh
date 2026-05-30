#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   examples/test_openai_key.sh <OPENAI_KEY>
# Or set OPENAI_API_KEY in environment, or run with MOCK=1 to use a local mock.

if [ "${MOCK:-0}" = "1" ]; then
  echo "MOCK mode: generating fake response"
  python3 examples/mock_openai.py > resp.json
  HTTP=200
else
  KEY="${1:-}${OPENAI_API_KEY:-}"
  if [ -z "$KEY" ]; then
    echo "Usage: $0 <OPENAI_KEY>  or set OPENAI_API_KEY or run with MOCK=1"
    exit 2
  fi
  export OPENAI_API_KEY="$KEY"

  # call OpenAI and save response
  HTTP=$(curl -s -o resp.json -w "%{http_code}" https://api.openai.com/v1/chat/completions \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -H "Content-Type: application/json" \
    -d '{"model":"gpt-3.5-turbo","messages":[{"role":"user","content":"What is a neural network in one sentence?"}],"max_tokens":60}')
fi

echo "HTTP $HTTP"

python3 - <<'PY'
import json
try:
    j = json.load(open('resp.json'))
except Exception as e:
    print('ERROR: could not load resp.json:', e)
    raise
if isinstance(j, dict) and 'error' in j:
    print('ERROR:', j['error'].get('message'))
elif isinstance(j, dict) and 'choices' in j and len(j['choices'])>0:
    print('REPLY:', j['choices'][0]['message']['content'])
else:
    print('REPLY: (unexpected resp.json structure)')
    print(json.dumps(j)[:1000])
PY
