# APIs & Keys — Exercises

1) Read and Run (10–20m)
- Call a public endpoint: write a script `examples/get_ip.py` that does a GET to `https://httpbin.org/ip` and prints the JSON response.

2) Store a secret locally (15–30m)
- Create a `.env` file with `API_KEY=your_key_here` and add `.env` to `.gitignore`.
- Use `python-dotenv` or `os.getenv` to read the key in a script.

3) Call an authenticated API (30–60m)
- Choose a free API: OpenWeatherMap, GitHub (personal token), or Hugging Face inference API.
- Implement `examples/call_protected_api.py` that reads `API_KEY` and sends an authenticated request.
- Print status code and parsed JSON; handle errors (401, 429).

4) Mini-project (optional)
- Build a small CLI that takes a city name and returns current weather using OpenWeatherMap.
- Add `--save` option to store results to a local `data/` JSON file (do not commit data/ to Git).

Hints
- Use `requests` and `requests.exceptions` to handle network errors.
- For OAuth flows, prefer using provider SDKs rather than rolling your own.

Safety
- Reiterate: never commit `.env` or keys. Consider adding a pre-commit hook to block key patterns.
