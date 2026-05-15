<p align="center">
  <img src="./assets/logo.png" alt="TexAPI" width="80" />
</p>

<h1 align="center">TexAPI</h1>

<p align="center">
  Unified AI API Gateway — Access Claude, GPT, Gemini through one endpoint.<br/>
  Up to 70% cheaper than official pricing. OpenAI-compatible.
</p>

<p align="center">
  <a href="https://texapi.dev">Website</a> · <a href="#quick-start">Quick Start</a> · <a href="#pricing">Pricing</a> · <a href="./README.vi.md">Tiếng Việt</a>
</p>

---

## What is TexAPI?

TexAPI is an API gateway that gives you access to Claude, GPT, and Gemini models through a single OpenAI-compatible endpoint. One API key, one bill, all models.

- Drop-in replacement for OpenAI / Anthropic / Google APIs
- Works with Claude Code, Codex CLI, Gemini CLI, Cursor, Continue, and any OpenAI SDK
- Smart routing with automatic fallback across multiple providers
- Real-time usage dashboard with spending controls
- Free tier included

---

## Supported Models

**Paid models:**

| Model | Family | Best for |
|-------|--------|----------|
| `claude-sonnet-4-5` | Claude | Coding, analysis |
| `claude-opus-4-5` | Claude | Complex reasoning |
| `claude-haiku-4-5` | Claude | Fast, cheap |
| `gpt-5.5` | GPT | OpenAI flagship |
| `gpt-5.4` | GPT | Balanced |
| `gpt-5.4-mini` | GPT | Cost-effective |
| `gpt-5.4-nano` | GPT | Ultra-cheap |
| `gemini-2.5-pro` | Gemini | Google's best |
| `gemini-2.5-flash` | Gemini | Fast inference |
| `gpt-image-2` | Image | Image generation |

**Free models (no credits charged):**

| Model | Description |
|-------|-------------|
| `gpt-oss-120b` | 120B parameter open-source model |
| `minimax-m2.5-free` | MiniMax M2.5 |
| `nemotron-3-super-free` | NVIDIA Nemotron 3 Super |
| `big-pickle` | Big Pickler |

Free models require at least one successful payment. Daily limits: 100 req/day (no plan) up to 10,000 req/day (Business plan).

---

## Quick Start

**1. Sign up** at [texapi.dev](https://texapi.dev) — Google, GitHub, or Discord login. You get 2 free credits instantly.

**2. Create an API key** in your dashboard.

**3. Make a request:**

```bash
curl https://texapi.dev/v1/chat/completions \
  -H "Authorization: Bearer tex-YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "claude-sonnet-4-5",
    "messages": [{"role": "user", "content": "Hello!"}],
    "stream": true
  }'
```

That's it. Any tool or SDK that supports OpenAI format works out of the box.

---

## Use with Claude Code

```bash
export ANTHROPIC_BASE_URL=https://texapi.dev
export ANTHROPIC_API_KEY=tex-YOUR_API_KEY

claude
```

Windows (PowerShell):
```powershell
$env:ANTHROPIC_BASE_URL = "https://texapi.dev"
$env:ANTHROPIC_API_KEY = "tex-YOUR_API_KEY"
claude
```

Full `/v1/messages` support — streaming, extended thinking, tool use.

---

## Use with OpenAI Codex CLI

```bash
export OPENAI_BASE_URL=https://texapi.dev/v1
export OPENAI_API_KEY=tex-YOUR_API_KEY

codex
```

Windows (PowerShell):
```powershell
$env:OPENAI_BASE_URL = "https://texapi.dev/v1"
$env:OPENAI_API_KEY = "tex-YOUR_API_KEY"
codex
```

---

## Use with Gemini CLI

```bash
export GEMINI_API_BASE=https://texapi.dev/v1
export GEMINI_API_KEY=tex-YOUR_API_KEY

gemini
```

---

## Use with OpenAI SDK

Python:
```python
from openai import OpenAI

client = OpenAI(
    api_key="tex-YOUR_API_KEY",
    base_url="https://texapi.dev/v1"
)

response = client.chat.completions.create(
    model="claude-sonnet-4-5",
    messages=[{"role": "user", "content": "Write a Python quicksort"}],
    stream=True
)

for chunk in response:
    print(chunk.choices[0].delta.content or "", end="")
```

Node.js:
```typescript
import OpenAI from "openai";

const client = new OpenAI({
  apiKey: "tex-YOUR_API_KEY",
  baseURL: "https://texapi.dev/v1",
});

const stream = await client.chat.completions.create({
  model: "claude-sonnet-4-5",
  messages: [{ role: "user", content: "Explain async/await" }],
  stream: true,
});

for await (const chunk of stream) {
  process.stdout.write(chunk.choices[0]?.delta?.content || "");
}
```

---

## Endpoints

| Endpoint | Format | Models |
|----------|--------|--------|
| `POST /v1/chat/completions` | OpenAI | All |
| `POST /v1/messages` | Anthropic | Claude |
| `POST /v1/responses` | OpenAI Responses | GPT |
| `POST /v1/images/generations` | OpenAI Images | gpt-image-2 |
| `GET /v1/models` | OpenAI | List all |

---

## Pricing

Pay-as-you-go. No subscription required.

| Top-up (VND) | Credits | ~USD |
|-------------|---------|------|
| 50,000₫ | 90 | $2 |
| 100,000₫ | 180 | $4 |
| 200,000₫ | 360 | $8 |
| 500,000₫ | 900 | $19 |
| 1,000,000₫ | 1,800 | $38 |

**1 credit = 550₫ (~$0.022)**

Model pricing (credits per 1M tokens):

| Model | Input | Output | vs Official |
|-------|-------|--------|-------------|
| claude-sonnet-4-5 | 3.0 | 15.0 | ~60% cheaper |
| claude-haiku-4-5 | 0.8 | 4.0 | ~50% cheaper |
| gpt-5.4 | 0.75 | 4.5 | ~70% cheaper |
| gpt-5.4-mini | 0.225 | 1.35 | ~65% cheaper |
| gemini-2.5-pro | 1.25 | 10.0 | ~50% cheaper |
| Free models | 0 | 0 | Free |

Subscription plans available for higher rate limits (60–3,000 RPM) and monthly credit bundles.

---

## Features

**Smart routing** — Multiple upstream providers with priority-based fallback. If one is down, your request goes to the next.

**Spending controls** — Daily cap (500 credits/day default), per-key monthly limits, real-time balance tracking.

**Multi-format** — Send OpenAI format or Anthropic format. TexAPI translates automatically.

**Analytics** — Per-model, per-key usage tracking. Latency, costs, error rates in your dashboard.

**Security** — API keys hashed (HMAC-SHA256), upstream credentials encrypted (AES-256-GCM), no request content stored.

**Referral program** — 5% commission on every top-up from users you invite.

---

## FAQ

<details>
<summary>Is my data safe?</summary>
TexAPI does not store request or response content. Only metadata (token counts, latency, model) is logged for billing.
</details>

<details>
<summary>Can I use this in production?</summary>
Yes. Business plan supports 3,000 RPM and 100 API keys.
</details>

<details>
<summary>What payment methods?</summary>
VietQR bank transfer (instant) — works with all Vietnamese banks. International payments coming soon.
</details>

<details>
<summary>Do credits expire?</summary>
Top-up credits never expire. Subscription credits expire at end of billing period.
</details>

---

## Links

- Website: [texapi.dev](https://texapi.dev)
- API docs: [docs/api-reference.md](./docs/api-reference.md)
- Discord: [discord.gg/texapi](https://discord.gg/texapi)

---

<p align="center">
  <a href="https://texapi.dev">Get started →</a>
</p>
