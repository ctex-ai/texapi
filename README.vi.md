<p align="center">
  <img src="./assets/logo.png" alt="TexAPI" width="100" />
</p>

<h1 align="center">TexAPI</h1>

<p align="center">
  <strong>Một API key. Tất cả AI models. Rẻ hơn tới 70%.</strong>
</p>

<p align="center">
  Truy cập Claude, GPT, Gemini và free models qua một endpoint duy nhất tương thích OpenAI.<br/>
  Thay thế trực tiếp cho Anthropic, OpenAI, và Google API.
</p>

<p align="center">
  <a href="https://texapi.dev"><img src="https://img.shields.io/badge/Website-texapi.dev-0969da?style=flat-square" alt="Website" /></a>
  <a href="https://discord.gg/texapi"><img src="https://img.shields.io/badge/Discord-Tham%20gia-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
  <a href="#bảng-giá"><img src="https://img.shields.io/badge/Tiết%20kiệm-Tới%2070%25-16a34a?style=flat-square" alt="Tiết kiệm" /></a>
  <a href="./README.md"><img src="https://img.shields.io/badge/lang-English-blue?style=flat-square" alt="English" /></a>
</p>

<br/>

<p align="center">
  <img src="./assets/hero-diagram.svg" alt="TexAPI Architecture" width="700" />
</p>

---

## Bắt Đầu

```bash
# Dùng với bất kỳ SDK hoặc tool tương thích OpenAI.
curl https://texapi.dev/v1/chat/completions \
  -H "Authorization: Bearer tex-API_KEY_CUA_BAN" \
  -H "Content-Type: application/json" \
  -d '{"model": "claude-sonnet-4-5", "messages": [{"role": "user", "content": "Xin chào!"}]}'
```

1. **Đăng ký** → [texapi.dev](https://texapi.dev) (Google / GitHub / Discord). Nhận 2 credits miễn phí.
2. **Tạo API key** → Dashboard → API Keys → Tạo.
3. **Dùng mọi nơi** → Đặt base URL là `https://texapi.dev/v1` trong bất kỳ tool tương thích OpenAI.

---

## Tương Thích Mọi Thứ

<table>
<tr>
<td width="50%">

### Claude Code

```bash
export ANTHROPIC_BASE_URL=https://texapi.dev
export ANTHROPIC_API_KEY=tex-KEY_CUA_BAN
claude
```

</td>
<td width="50%">

### OpenAI Codex CLI

```bash
export OPENAI_BASE_URL=https://texapi.dev/v1
export OPENAI_API_KEY=tex-KEY_CUA_BAN
codex
```

</td>
</tr>
<tr>
<td width="50%">

### Gemini CLI

```bash
export GEMINI_API_BASE=https://texapi.dev/v1
export GEMINI_API_KEY=tex-KEY_CUA_BAN
gemini
```

</td>
<td width="50%">

### Bất kỳ OpenAI SDK

```python
from openai import OpenAI
client = OpenAI(
    api_key="tex-KEY_CUA_BAN",
    base_url="https://texapi.dev/v1"
)
```

</td>
</tr>
</table>

> Cũng hoạt động với **Cursor**, **Continue**, **Cline**, **Aider**, **LiteLLM**, và mọi tool chấp nhận custom OpenAI base URL.

---

## Models

### 💎 Models trả phí

| Model | Họ | Input | Output | So với giá gốc |
|-------|-----|-------|--------|----------------|
| `claude-sonnet-4-5` | Claude | 3.0 | 15.0 | **Rẻ hơn ~60%** |
| `claude-opus-4-5` | Claude | 15.0 | 75.0 | **Rẻ hơn ~56%** |
| `claude-haiku-4-5` | Claude | 0.8 | 4.0 | **Rẻ hơn ~50%** |
| `gpt-5.5` | GPT | 1.5 | 9.0 | **Rẻ hơn ~70%** |
| `gpt-5.4` | GPT | 0.75 | 4.5 | **Rẻ hơn ~70%** |
| `gpt-5.4-mini` | GPT | 0.225 | 1.35 | **Rẻ hơn ~65%** |
| `gpt-5.4-nano` | GPT | 0.06 | 0.375 | **Rẻ hơn ~70%** |
| `gemini-2.5-pro` | Gemini | 1.25 | 10.0 | **Rẻ hơn ~50%** |
| `gemini-2.5-flash` | Gemini | 0.15 | 0.6 | **Rẻ hơn ~50%** |
| `gpt-image-2` | Image | — | — | per-image |

<sub>Giá tính bằng credits / 1M tokens. 1 credit = 550₫ (~$0.022 USD)</sub>

### 🆓 Models miễn phí

| Model | Mô tả | Giới hạn/ngày |
|-------|--------|---------------|
| `gpt-oss-120b` | Model open-source 120B tham số | 100 – 10,000 req/ngày |
| `minimax-m2.5-free` | MiniMax M2.5 | 100 – 10,000 req/ngày |
| `nemotron-3-super-free` | NVIDIA Nemotron 3 Super | 100 – 10,000 req/ngày |
| `big-pickle` | Big Pickler | 100 – 10,000 req/ngày |

<sub>Models miễn phí yêu cầu ít nhất một lần thanh toán. Giới hạn theo gói: Không gói (100) → Starter (300) → Builder (1,000) → Pro (3,000) → Business (10,000)</sub>

---

## Endpoints

| Endpoint | Format | Dùng với |
|----------|--------|----------|
| `POST /v1/chat/completions` | OpenAI Chat | Tất cả models, tất cả tools |
| `POST /v1/messages` | Anthropic Messages | Claude Code, Anthropic SDK |
| `POST /v1/responses` | OpenAI Responses | Codex CLI, Responses API |
| `POST /v1/images/generations` | OpenAI Images | gpt-image-2 |
| `GET /v1/models` | OpenAI Models | Liệt kê models |

---

## Bảng Giá

### Nạp tiền (Pay-as-you-go)

| Số tiền | Credits | ~USD |
|---------|---------|------|
| 50,000₫ | 90 | $2 |
| 100,000₫ | 180 | $4 |
| 200,000₫ | 360 | $8 |
| 500,000₫ | 900 | $19 |
| 1,000,000₫ | 1,800 | $38 |

Thanh toán qua VietQR (chuyển khoản tức thì). Thanh toán quốc tế sắp ra mắt.

### Gói Subscription

| | Starter | Builder | Pro | Business |
|---|---------|---------|-----|----------|
| **Hàng tháng** | 299,000₫ | 749,000₫ | 2,090,000₫ | 5,290,000₫ |
| **Credits** | 550 | 1,400 | 3,900 | 10,000 |
| **RPM** | 60 | 240 | 1,000 | 3,000 |
| **API Keys** | 3 | 10 | 25 | 100 |
| **Free model/ngày** | 300 | 1,000 | 3,000 | 10,000 |

---

## Cách Hoạt Động

```
┌─────────────────────────────────────────────────────────────┐
│  App / IDE / CLI của bạn                                    │
│  (Claude Code, Codex, Gemini CLI, Cursor, SDK, ...)         │
└─────────────────────┬───────────────────────────────────────┘
                      │ Authorization: Bearer tex-...
                      ▼
┌─────────────────────────────────────────────────────────────┐
│  TexAPI Gateway  (https://texapi.dev/v1)                    │
│                                                             │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌───────────┐  │
│  │ Xác thực │→ │ Rate     │→ │ Credit   │→ │ Smart     │  │
│  │ API Key  │  │ Limiting │  │ Check    │  │ Routing   │  │
│  └──────────┘  └──────────┘  └──────────┘  └─────┬─────┘  │
└───────────────────────────────────────────────────┼─────────┘
                      │ Fallback theo priority       │
          ┌───────────┼───────────┬─────────────────┘
          ▼           ▼           ▼
   ┌────────────┐ ┌────────┐ ┌────────────┐ ┌────────────┐
   │  Claude    │ │  GPT   │ │  Gemini    │ │  Free Pool │
   │ (Anthropic)│ │(OpenAI)│ │ (Google)   │ │ (OSS 120B) │
   └────────────┘ └────────┘ └────────────┘ └────────────┘
```

**Tính năng chính:**

- 🔀 **Smart routing** — Routing theo priority với tự động fallback. Provider sập → request chuyển sang route tiếp theo.
- 🔄 **Chuyển đổi format** — Gửi format OpenAI, nhận response Anthropic (hoặc ngược lại). TexAPI tự xử lý.
- 📊 **Analytics real-time** — Usage theo model, theo key, theo ngày. Chi phí, latency, error rate trên dashboard.
- 🔒 **Bảo mật** — Key hash HMAC-SHA256, upstream creds mã hóa AES-256-GCM, không lưu nội dung.
- 💰 **Kiểm soát chi tiêu** — Giới hạn hàng ngày, giới hạn hàng tháng theo key, theo dõi số dư real-time.
- 🤝 **Giới thiệu bạn bè** — Hoa hồng 5% trên mỗi lần nạp tiền của người bạn mời. Vĩnh viễn.

---

## Code Examples

<details>
<summary><strong>Python — Streaming</strong></summary>

```python
from openai import OpenAI

client = OpenAI(api_key="tex-KEY_CUA_BAN", base_url="https://texapi.dev/v1")

stream = client.chat.completions.create(
    model="claude-sonnet-4-5",
    messages=[{"role": "user", "content": "Viết quicksort bằng Python"}],
    stream=True,
)

for chunk in stream:
    print(chunk.choices[0].delta.content or "", end="")
```

</details>

<details>
<summary><strong>Node.js / TypeScript — Streaming</strong></summary>

```typescript
import OpenAI from "openai";

const client = new OpenAI({ apiKey: "tex-KEY_CUA_BAN", baseURL: "https://texapi.dev/v1" });

const stream = await client.chat.completions.create({
  model: "claude-sonnet-4-5",
  messages: [{ role: "user", content: "Giải thích async/await" }],
  stream: true,
});

for await (const chunk of stream) {
  process.stdout.write(chunk.choices[0]?.delta?.content || "");
}
```

</details>

<details>
<summary><strong>cURL</strong></summary>

```bash
curl https://texapi.dev/v1/chat/completions \
  -H "Authorization: Bearer tex-KEY_CUA_BAN" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-5.4",
    "messages": [{"role": "user", "content": "Xin chào!"}],
    "max_tokens": 100
  }'
```

</details>

---

## FAQ

<details>
<summary><strong>Dữ liệu có an toàn không?</strong></summary>

Có. TexAPI không lưu bất kỳ nội dung request/response nào. Chỉ metadata (số token, latency, model) được ghi cho billing và analytics.
</details>

<details>
<summary><strong>Dùng cho production được không?</strong></summary>

Hoàn toàn. Gói Business hỗ trợ 3,000 RPM, 100 API keys, và 99.9%+ uptime với multi-provider fallback.
</details>

<details>
<summary><strong>Thanh toán bằng gì?</strong></summary>

Chuyển khoản ngân hàng qua VietQR (tức thì) — hỗ trợ tất cả ngân hàng Việt Nam. Thanh toán quốc tế sắp ra mắt.
</details>

<details>
<summary><strong>Credits có hết hạn không?</strong></summary>

Credits nạp tiền không bao giờ hết hạn. Credits subscription hết hạn cuối mỗi chu kỳ thanh toán.
</details>

<details>
<summary><strong>Provider sập thì sao?</strong></summary>

TexAPI tự động route request sang provider tiếp theo. Bạn không cần thay đổi gì.
</details>

---

## Tài Liệu

| Tài liệu | Mô tả |
|-----------|--------|
| [API Reference](./docs/api-reference.md) | Tài liệu endpoint đầy đủ |
| [Setup Claude Code](./docs/setup-claude-code.md) | Dùng TexAPI với Claude Code |
| [Setup Codex CLI](./docs/setup-codex.md) | Dùng TexAPI với OpenAI Codex |
| [Setup Gemini CLI](./docs/setup-gemini-cli.md) | Dùng TexAPI với Gemini CLI |
| [So sánh giá](./docs/comparison.md) | So sánh chi tiết với giá gốc |

---

## Liên Kết

🌐 [texapi.dev](https://texapi.dev) · 💬 [Discord](https://discord.gg/texapi) · 📧 support@texapi.dev

---

<p align="center">
  <sub>Nếu TexAPI giúp bạn tiết kiệm, hãy cho repo này một ⭐</sub>
</p>
