# TexAPI — API Reference

## Base URL

```
https://texapi.dev/v1
```

## Authentication

All requests require an API key in the `Authorization` header:

```
Authorization: Bearer tex-YOUR_API_KEY
```

---

## Endpoints

### POST /v1/chat/completions

OpenAI-compatible chat completions. Works with all models.

```bash
curl https://texapi.dev/v1/chat/completions \
  -H "Authorization: Bearer tex-YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "claude-sonnet-4-5",
    "messages": [
      {"role": "system", "content": "You are a helpful assistant."},
      {"role": "user", "content": "Hello!"}
    ],
    "stream": true,
    "max_tokens": 4096,
    "temperature": 0.7
  }'
```

**Response (non-streaming):**
```json
{
  "id": "chatcmpl-abc123",
  "object": "chat.completion",
  "model": "claude-sonnet-4-5",
  "choices": [{
    "index": 0,
    "message": {"role": "assistant", "content": "Hello! How can I help?"},
    "finish_reason": "stop"
  }],
  "usage": {
    "prompt_tokens": 15,
    "completion_tokens": 8,
    "total_tokens": 23
  }
}
```

---

### POST /v1/messages

Anthropic Messages API (native format). Best for Claude models.

```bash
curl https://texapi.dev/v1/messages \
  -H "Authorization: Bearer tex-YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -H "anthropic-version: 2023-06-01" \
  -d '{
    "model": "claude-sonnet-4-5",
    "max_tokens": 4096,
    "messages": [
      {"role": "user", "content": "Explain quantum computing"}
    ]
  }'
```

---

### POST /v1/responses

OpenAI Responses API format.

```bash
curl https://texapi.dev/v1/responses \
  -H "Authorization: Bearer tex-YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-5.4",
    "input": "Write a haiku about programming"
  }'
```

---

### POST /v1/images/generations

Generate images using AI models.

```bash
curl https://texapi.dev/v1/images/generations \
  -H "Authorization: Bearer tex-YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-image-2",
    "prompt": "A futuristic city at sunset, cyberpunk style",
    "n": 1,
    "size": "1024x1024"
  }'
```

---

### GET /v1/models

List all available models.

```bash
curl https://texapi.dev/v1/models \
  -H "Authorization: Bearer tex-YOUR_API_KEY"
```

**Response:**
```json
{
  "object": "list",
  "data": [
    {"id": "claude-sonnet-4-5", "object": "model", "owned_by": "texapi"},
    {"id": "gpt-5.4", "object": "model", "owned_by": "texapi"},
    {"id": "gemini-2.5-pro", "object": "model", "owned_by": "texapi"}
  ]
}
```

---

## Error Codes

| HTTP Code | Error | Description |
|-----------|-------|-------------|
| 401 | `invalid_api_key` | API key is invalid or revoked |
| 402 | `insufficient_credits` | Not enough credits |
| 429 | `rate_limited` | RPM or TPM limit exceeded |
| 429 | `daily_spending_cap_exceeded` | Daily spending cap reached |
| 429 | `api_key_monthly_limit_exceeded` | Per-key monthly limit reached |
| 503 | `all_routes_failed` | All upstream providers unavailable |

---

## Rate Limits

Rate limits depend on your plan:

| Plan | RPM | TPM |
|------|-----|-----|
| Free (no plan) | 10 | 10,000 |
| Starter | 60 | 40,000 |
| Builder | 240 | 160,000 |
| Pro | 1,000 | 500,000 |
| Business | 3,000 | 1,500,000 |

Rate limit headers are included in responses:
```
x-ratelimit-limit-requests: 60
x-ratelimit-remaining-requests: 59
x-ratelimit-reset-requests: 1s
```

---

## SDKs & Libraries

TexAPI is compatible with any OpenAI SDK. Just change the base URL:

| Language | SDK | Base URL |
|----------|-----|----------|
| Python | `openai` | `https://texapi.dev/v1` |
| Node.js | `openai` | `https://texapi.dev/v1` |
| Go | `sashabaranov/go-openai` | `https://texapi.dev/v1` |
| Rust | `async-openai` | `https://texapi.dev/v1` |
| Ruby | `ruby-openai` | `https://texapi.dev/v1` |

---

[← Back to main README](../README.md)
