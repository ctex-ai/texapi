<p align="center">
  <img src="./assets/logo.png" alt="TexAPI Logo" width="120" />
</p>

<h1 align="center">TexAPI — Unified AI API Gateway</h1>

<p align="center">
  <strong>Access Claude, GPT, Gemini through one API endpoint. Up to 70% cheaper than official pricing.</strong>
</p>

<p align="center">
  <a href="https://texapi.dev"><img src="https://img.shields.io/badge/Website-texapi.dev-blue?style=for-the-badge" alt="Website" /></a>
  <a href="#pricing"><img src="https://img.shields.io/badge/Savings-Up%20to%2070%25-green?style=for-the-badge" alt="Savings" /></a>
  <a href="#supported-models"><img src="https://img.shields.io/badge/Models-20%2B-purple?style=for-the-badge" alt="Models" /></a>
  <a href="#"><img src="https://img.shields.io/badge/Uptime-99.9%25-brightgreen?style=for-the-badge" alt="Uptime" /></a>
</p>

<p align="center">
  <a href="./README.vi.md">🇻🇳 Tiếng Việt</a> •
  <a href="https://texapi.dev">Dashboard</a> •
  <a href="#quick-start">Quick Start</a> •
  <a href="#pricing">Pricing</a> •
  <a href="#use-with-claude-code">Claude Code</a> •
  <a href="#use-with-openai-codex">Codex CLI</a>
</p>

---

## Why TexAPI?

| Problem | TexAPI Solution |
|---------|----------------|
| Claude API waitlist / region-blocked | ✅ Instant access, no waitlist |
| Paying full price for multiple AI APIs | ✅ Up to 70% off official pricing |
| Managing multiple API keys & billing | ✅ One key, one bill, all models |
| No usage analytics or spending control | ✅ Real-time dashboard + daily caps |
| Rate limits on official APIs | ✅ Smart routing with automatic fallback |

---

## Supported Models

| Model | Family | Use Case |
|-------|--------|----------|
| `claude-sonnet-4-5` | Claude | Best for coding, analysis |
| `claude-opus-4-5` | Claude | Complex reasoning |
| `claude-haiku-4-5` | Claude | Fast & cheap |
| `gpt-5.5` | GPT | Latest OpenAI flagship |
| `gpt-5.4` | GPT | Balanced performance |
| `gpt-5.4-mini` | GPT | Cost-effective |
| `gpt-5.4-nano` | GPT | Ultra-cheap, fast |
| `gemini-2.5-pro` | Gemini | Google's best |
| `gemini-2.5-flash` | Gemini | Fast inference |
| `gpt-image-2` | Image | Image generation |
| `gpt-oss-120b` | Free | Free tier (after first topup) |

> 💡 Full model list: [`GET /api/models`](https://texapi.dev/api/models)

---

## Quick Start

### 1. Sign up (30 seconds)

Go to [texapi.dev](https://texapi.dev) → Sign up with Google/GitHub/Discord → Get **2 free credits** instantly.

### 2. Create an API key

Dashboard → API Keys → Create Key → Copy your `tex-...` key.

### 3. Make your first request

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

That's it. **OpenAI-compatible API** — works with any SDK or tool that supports OpenAI format.

---

## Use with Claude Code

TexAPI works as a drop-in replacement for the official Anthropic API in [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

```bash
# Set environment variables
export ANTHROPIC_BASE_URL=https://texapi.dev
export ANTHROPIC_API_KEY=tex-YOUR_API_KEY

# Launch Claude Code as usual
claude
```

**Windows (PowerShell):**
```powershell
$env:ANTHROPIC_BASE_URL = "https://texapi.dev"
$env:ANTHROPIC_API_KEY = "tex-YOUR_API_KEY"
claude
```

> ✅ Full `/v1/messages` support including streaming, extended thinking, and tool use.

---

## Use with OpenAI Codex

```bash
export OPENAI_BASE_URL=https://texapi.dev/v1
export OPENAI_API_KEY=tex-YOUR_API_KEY

codex
```

**Windows (PowerShell):**
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

## Use with Any OpenAI SDK

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

## Compatible Endpoints

| Endpoint | Format | Models |
|----------|--------|--------|
| `POST /v1/chat/completions` | OpenAI | All models |
| `POST /v1/messages` | Anthropic | Claude models |
| `POST /v1/responses` | OpenAI Responses | GPT models |
| `POST /v1/images/generations` | OpenAI Images | gpt-image-2 |
| `GET /v1/models` | OpenAI | List all |

---

## Pricing

### Pay-as-you-go (No subscription required)

| Top-up (VND) | Credits | Approx. USD |
|-------------|---------|-------------|
| 50,000₫ | 90 | ~$2 |
| 100,000₫ | 180 | ~$4 |
| 200,000₫ | 360 | ~$8 |
| 500,000₫ | 900 | ~$19 |
| 1,000,000₫ | 1,800 | ~$38 |

### Model Pricing (credits per 1M tokens)

| Model | Input | Output | vs Official |
|-------|-------|--------|-------------|
| claude-sonnet-4-5 | 3.0 | 15.0 | **~60% cheaper** |
| claude-haiku-4-5 | 0.8 | 4.0 | **~50% cheaper** |
| gpt-5.4 | 0.75 | 4.5 | **~70% cheaper** |
| gpt-5.4-mini | 0.225 | 1.35 | **~65% cheaper** |
| gemini-2.5-pro | 1.25 | 10.0 | **~50% cheaper** |
| gpt-oss-120b | FREE | FREE | ∞ |

> 1 credit = 550₫ (~$0.022 USD)

### Subscription Plans

| Plan | Monthly | Credits | RPM | API Keys |
|------|---------|---------|-----|----------|
| Starter | 299,000₫ | 550 | 60 | 3 |
| Builder | 749,000₫ | 1,400 | 240 | 10 |
| Pro | 2,090,000₫ | 3,900 | 1,000 | 25 |
| Business | 5,290,000₫ | 10,000 | 3,000 | 100 |

---

## Features

### 🔀 Smart Routing & Fallback
Multiple upstream providers with priority-based routing. If one provider is down, requests automatically fallback to the next available route.

### 📊 Real-time Analytics
Track usage per model, per key, per day. See costs, latency, and error rates in your dashboard.

### 🔒 Security First
- API keys hashed with HMAC-SHA256
- Upstream credentials encrypted with AES-256-GCM
- No request content stored
- httpOnly session cookies

### 💰 Spending Controls
- Daily spending cap (default 500 credits/day)
- Per-key monthly limits
- Real-time balance tracking
- Credit reservation for non-streaming requests

### 🌐 Multi-format Support
Send requests in OpenAI format or Anthropic format — TexAPI translates automatically between formats.

### 🎁 Free Tier
`gpt-oss-120b` — a capable 120B parameter model, free to use after your first top-up (10-1000 requests/day based on plan).

### 🤝 Referral Program
Earn **5% commission** on every top-up from users you invite. Permanent passive income.

---

## Architecture

```
Your App / IDE / CLI
        │
        ▼
   TexAPI Gateway (https://texapi.dev/v1)
        │
        ├── Auth (API key validation)
        ├── Rate Limiting (per-key RPM/TPM)
        ├── Credit Check & Reservation
        ├── Smart Routing (priority-based)
        │
        ▼
   Upstream Providers
   ├── Claude (Anthropic)
   ├── GPT (OpenAI)
   ├── Gemini (Google)
   └── Free Models
```

---

## FAQ

<details>
<summary><strong>Is this legal?</strong></summary>

Yes. TexAPI is a legitimate API reseller that purchases capacity from authorized distributors at volume discounts and passes savings to end users.
</details>

<details>
<summary><strong>What's the uptime?</strong></summary>

99.9%+ uptime with automatic failover between multiple upstream providers.
</details>

<details>
<summary><strong>Is my data safe?</strong></summary>

TexAPI does not store any request/response content. Only metadata (token counts, latency, model used) is logged for billing and analytics.
</details>

<details>
<summary><strong>Can I use this for production?</strong></summary>

Absolutely. Many developers and teams use TexAPI in production. The Business plan supports up to 3,000 RPM and 100 API keys.
</details>

<details>
<summary><strong>What payment methods are accepted?</strong></summary>

VietQR bank transfer (instant) via PayOS. Works with all Vietnamese banks. International payments coming soon.
</details>

<details>
<summary><strong>Do credits expire?</strong></summary>

Top-up credits never expire. Subscription credits expire at the end of each billing period.
</details>

---

## Support

- 🌐 Website: [texapi.dev](https://texapi.dev)
- 💬 Discord: [Join our community](https://discord.gg/texapi)
- 📧 Email: support@texapi.dev

---

## Star History

If TexAPI saves you money, consider giving us a ⭐ — it helps other developers discover cheaper AI API access.

---

<p align="center">
  <strong>Stop overpaying for AI APIs.</strong><br/>
  <a href="https://texapi.dev">Get started with TexAPI →</a>
</p>
