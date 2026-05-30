# APIs & Keys — Lesson Scaffold

Objective
- Introduce API concepts, authentication, and secure key management for ML workflows.

Prerequisites
- Basic Python (requests), Git, and a terminal.
- Access to an API provider account (OpenAI, Hugging Face, or a public REST API).

Lesson Flow
1. Read: short explanation of HTTP, REST, API keys, OAuth vs API tokens, rate limits.
2. Run: simple example — call a public JSON API (httpbin.org/get) using `requests`.
3. Explain: show request/response lifecycle, headers, status codes, JSON parsing.
4. Visual: diagram of client → API → model host (use a small Mermaid diagram in the notebook).
5. Exercise: obtain an API key, store it securely, and call a protected endpoint.

Secure Key Management
- Never commit keys to Git. Add keys to `.gitignore` and use environment variables or `python-dotenv`.
- Use OS credential stores or a secrets manager for production.

Quick Code Examples
- Example environment variable usage in Python: os.getenv('API_KEY')
- Example `requests` call pattern with Authorization header.

Deliverables
- A small script `examples/call_api.py` that reads a key from env and makes an authenticated request.
- `EXERCISES.md` with step-by-step tasks and suggested APIs to try.

Notes for instructor
- Provide optional sandbox API keys or point students to free-tier services (OpenWeatherMap, GitHub public APIs, or httpbin for non-auth examples).
