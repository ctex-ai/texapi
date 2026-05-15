# Troubleshooting

## Common Errors

### 401 — `invalid_api_key`

- Your API key is invalid or has been revoked
- Make sure it starts with `tex-`
- Check that the key is active in your [dashboard](https://texapi.dev)

### 402 — `insufficient_credits`

- Your balance is too low
- Top up at [texapi.dev/billing](https://texapi.dev/billing)
- Minimum top-up: 50,000₫ (~$2)

### 429 — `rate_limited`

- You've exceeded your RPM (requests per minute) or TPM (tokens per minute) limit
- Wait a moment and retry
- Upgrade your plan for higher limits

### 429 — `daily_spending_cap_exceeded`

- You've spent more than 500 credits today (default cap)
- Wait until tomorrow or contact support to increase your cap

### 429 — `api_key_monthly_limit_exceeded`

- Your API key has a monthly credit limit configured
- Adjust it in Dashboard → API Keys → Edit

### 503 — `all_routes_failed`

- All upstream providers are temporarily unavailable
- This is rare due to multi-provider fallback
- Retry after a few seconds

### 503 — `provider_unavailable`

- The specific model's provider is down
- TexAPI will automatically try fallback routes
- If all routes fail, you'll get this error

## Connection Issues

### Timeout

- Default timeout is 120 seconds
- For long responses, make sure your client doesn't timeout before TexAPI does
- Use streaming (`"stream": true`) for long responses

### SSL/TLS Errors

- Make sure your system clock is correct
- Update your CA certificates
- Try: `curl -v https://texapi.dev/v1/models`

## IDE-Specific Issues

### Claude Code — "Could not connect"

```bash
# Verify env vars are set
echo $ANTHROPIC_BASE_URL   # should be https://texapi.dev
echo $ANTHROPIC_API_KEY    # should start with tex-
```

### Codex — "Invalid API key format"

- Codex expects keys starting with `sk-`, but TexAPI uses `tex-`
- This is normal — set `OPENAI_API_KEY=tex-YOUR_KEY` and it will work

### Cursor — "Failed to authenticate"

- Go to Cursor Settings → Models → OpenAI API Key
- Set Base URL: `https://texapi.dev/v1`
- Set API Key: `tex-YOUR_KEY`

---

[← Back to main README](../README.md)
