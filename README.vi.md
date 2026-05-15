<p align="center">
  <img src="./assets/logo.png" alt="TexAPI" width="80" />
</p>

<h1 align="center">TexAPI</h1>

<p align="center">
  Cổng API AI hợp nhất — Truy cập Claude, GPT, Gemini qua một endpoint duy nhất.<br/>
  Rẻ hơn tới 70% so với giá gốc. Tương thích OpenAI.
</p>

<p align="center">
  <a href="https://texapi.dev">Website</a> · <a href="#bắt-đầu-nhanh">Bắt đầu</a> · <a href="#bảng-giá">Bảng giá</a> · <a href="./README.md">English</a>
</p>

---

## TexAPI là gì?

TexAPI là API gateway cho phép bạn truy cập các model Claude, GPT, và Gemini qua một endpoint duy nhất tương thích OpenAI. Một API key, một hóa đơn, tất cả models.

- Thay thế trực tiếp cho OpenAI / Anthropic / Google API
- Hoạt động với Claude Code, Codex CLI, Gemini CLI, Cursor, Continue, và mọi OpenAI SDK
- Smart routing với tự động fallback giữa nhiều providers
- Dashboard theo dõi usage real-time với kiểm soát chi tiêu
- Có free tier

---

## Models hỗ trợ

**Models trả phí:**

| Model | Họ | Dùng cho |
|-------|-----|----------|
| `claude-sonnet-4-5` | Claude | Code, phân tích |
| `claude-opus-4-5` | Claude | Suy luận phức tạp |
| `claude-haiku-4-5` | Claude | Nhanh, rẻ |
| `gpt-5.5` | GPT | Flagship OpenAI |
| `gpt-5.4` | GPT | Cân bằng |
| `gpt-5.4-mini` | GPT | Tiết kiệm |
| `gpt-5.4-nano` | GPT | Siêu rẻ |
| `gemini-2.5-pro` | Gemini | Tốt nhất Google |
| `gemini-2.5-flash` | Gemini | Inference nhanh |
| `gpt-image-2` | Image | Tạo ảnh |

**Models miễn phí (không tốn credits):**

| Model | Mô tả |
|-------|--------|
| `gpt-oss-120b` | Model open-source 120B tham số |
| `minimax-m2.5-free` | MiniMax M2.5 |
| `nemotron-3-super-free` | NVIDIA Nemotron 3 Super |
| `big-pickle` | Big Pickler |

Models miễn phí yêu cầu ít nhất một lần thanh toán thành công. Giới hạn hàng ngày: 100 req/ngày (không gói) tới 10,000 req/ngày (gói Business).

---

## Bắt đầu nhanh

**1. Đăng ký** tại [texapi.dev](https://texapi.dev) — đăng nhập Google, GitHub, hoặc Discord. Nhận 2 credits miễn phí ngay.

**2. Tạo API key** trong dashboard.

**3. Gọi API:**

```bash
curl https://texapi.dev/v1/chat/completions \
  -H "Authorization: Bearer tex-API_KEY_CUA_BAN" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "claude-sonnet-4-5",
    "messages": [{"role": "user", "content": "Xin chào!"}],
    "stream": true
  }'
```

Xong. Mọi tool hoặc SDK hỗ trợ format OpenAI đều hoạt động ngay.

---

## Dùng với Claude Code

```bash
export ANTHROPIC_BASE_URL=https://texapi.dev
export ANTHROPIC_API_KEY=tex-API_KEY_CUA_BAN

claude
```

Windows (PowerShell):
```powershell
$env:ANTHROPIC_BASE_URL = "https://texapi.dev"
$env:ANTHROPIC_API_KEY = "tex-API_KEY_CUA_BAN"
claude
```

Hỗ trợ đầy đủ `/v1/messages` — streaming, extended thinking, tool use.

---

## Dùng với OpenAI Codex CLI

```bash
export OPENAI_BASE_URL=https://texapi.dev/v1
export OPENAI_API_KEY=tex-API_KEY_CUA_BAN

codex
```

Windows (PowerShell):
```powershell
$env:OPENAI_BASE_URL = "https://texapi.dev/v1"
$env:OPENAI_API_KEY = "tex-API_KEY_CUA_BAN"
codex
```

---

## Dùng với Gemini CLI

```bash
export GEMINI_API_BASE=https://texapi.dev/v1
export GEMINI_API_KEY=tex-API_KEY_CUA_BAN

gemini
```

---

## Dùng với OpenAI SDK

Python:
```python
from openai import OpenAI

client = OpenAI(
    api_key="tex-API_KEY_CUA_BAN",
    base_url="https://texapi.dev/v1"
)

response = client.chat.completions.create(
    model="claude-sonnet-4-5",
    messages=[{"role": "user", "content": "Viết quicksort bằng Python"}],
    stream=True
)

for chunk in response:
    print(chunk.choices[0].delta.content or "", end="")
```

Node.js:
```typescript
import OpenAI from "openai";

const client = new OpenAI({
  apiKey: "tex-API_KEY_CUA_BAN",
  baseURL: "https://texapi.dev/v1",
});

const stream = await client.chat.completions.create({
  model: "claude-sonnet-4-5",
  messages: [{ role: "user", content: "Giải thích async/await" }],
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
| `POST /v1/chat/completions` | OpenAI | Tất cả |
| `POST /v1/messages` | Anthropic | Claude |
| `POST /v1/responses` | OpenAI Responses | GPT |
| `POST /v1/images/generations` | OpenAI Images | gpt-image-2 |
| `GET /v1/models` | OpenAI | Liệt kê tất cả |

---

## Bảng giá

Nạp tiền theo nhu cầu. Không bắt buộc đăng ký gói.

| Số tiền (VND) | Credits | ~USD |
|--------------|---------|------|
| 50,000₫ | 90 | $2 |
| 100,000₫ | 180 | $4 |
| 200,000₫ | 360 | $8 |
| 500,000₫ | 900 | $19 |
| 1,000,000₫ | 1,800 | $38 |

**1 credit = 550₫ (~$0.022)**

Giá theo model (credits / 1M tokens):

| Model | Input | Output | So với giá gốc |
|-------|-------|--------|----------------|
| claude-sonnet-4-5 | 3.0 | 15.0 | Rẻ hơn ~60% |
| claude-haiku-4-5 | 0.8 | 4.0 | Rẻ hơn ~50% |
| gpt-5.4 | 0.75 | 4.5 | Rẻ hơn ~70% |
| gpt-5.4-mini | 0.225 | 1.35 | Rẻ hơn ~65% |
| gemini-2.5-pro | 1.25 | 10.0 | Rẻ hơn ~50% |
| Free models | 0 | 0 | Miễn phí |

Có gói subscription cho rate limit cao hơn (60–3,000 RPM) và credit hàng tháng.

---

## Tính năng

🔀 **Smart routing** — Nhiều upstream providers với fallback theo priority. Nếu một provider sập, request tự động chuyển sang route tiếp theo.

💰 **Kiểm soát chi tiêu** — Giới hạn hàng ngày (mặc định 500 credits/ngày), giới hạn hàng tháng theo key, theo dõi số dư real-time.

🔄 **Đa format** — Gửi format OpenAI hoặc Anthropic. TexAPI tự động chuyển đổi.

📊 **Analytics** — Theo dõi usage theo model, theo key. Latency, chi phí, error rate trên dashboard.

🔒 **Bảo mật** — API key hash HMAC-SHA256, credentials upstream mã hóa AES-256-GCM, không lưu nội dung request.

🤝 **Giới thiệu bạn bè** — Hoa hồng 5% trên mỗi lần nạp tiền của người bạn mời.

---

## FAQ

<details>
<summary>Dữ liệu có an toàn không?</summary>
TexAPI không lưu nội dung request/response. Chỉ metadata (số token, latency, model) được ghi cho billing.
</details>

<details>
<summary>Dùng cho production được không?</summary>
Được. Gói Business hỗ trợ 3,000 RPM và 100 API keys.
</details>

<details>
<summary>Thanh toán bằng gì?</summary>
Chuyển khoản ngân hàng qua VietQR (tức thì) — hỗ trợ tất cả ngân hàng Việt Nam. Thanh toán quốc tế sắp ra mắt.
</details>

<details>
<summary>Credits có hết hạn không?</summary>
Credits nạp tiền không bao giờ hết hạn. Credits subscription hết hạn cuối chu kỳ thanh toán.
</details>

---

## Liên kết

- 🌐 Website: [texapi.dev](https://texapi.dev)
- 📖 API docs: [docs/api-reference.md](./docs/api-reference.md)
- 💬 Discord: [discord.gg/texapi](https://discord.gg/texapi)

---

<p align="center">
  <a href="https://texapi.dev">Bắt đầu ngay →</a>
</p>
