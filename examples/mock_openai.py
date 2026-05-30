#!/usr/bin/env python3
import json
import sys
from datetime import datetime

resp = {
    "id": "mock-" + datetime.utcnow().strftime("%Y%m%d%H%M%S"),
    "object": "chat.completion",
    "created": int(datetime.utcnow().timestamp()),
    "model": "mock-model-1.0",
    "choices": [
        {
            "index": 0,
            "message": {
                "role": "assistant",
                "content": "A neural network is a set of parameterized functions (layers) composed to learn input->output mappings by optimizing a loss over data."
            },
            "finish_reason": "stop"
        }
    ],
    "usage": {"prompt_tokens": 5, "completion_tokens": 20, "total_tokens": 25}
}

json.dump(resp, sys.stdout, indent=2)
