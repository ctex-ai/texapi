<p align="center">
  <img src="./assets/logo.png" alt="TexAPI Logo" width="120" />
</p>

<h1 align="center">TexAPI — Cổng API AI Hợp Nhất</h1>

<p align="center">
  <strong>Truy cập Claude, GPT, Gemini qua một endpoint duy nhất. Rẻ hơn giá gốc tới 70%.</strong>
</p>

<p align="center">
  <a href="https://texapi.dev"><img src="https://img.shields.io/badge/Website-texapi.dev-blue?style=for-the-badge" alt="Website" /></a>
  <a href="#bảng-giá"><img src="https://img.shields.io/badge/Tiết%20kiệm-Tới%2070%25-green?style=for-the-badge" alt="Tiết kiệm" /></a>
  <a href="#models-hỗ-trợ"><img src="https://img.shields.io/badge/Models-20%2B-purple?style=for-the-badge" alt="Models" /></a>
  <a href="#"><img src="https://img.shields.io/badge/Uptime-99.9%25-brightgreen?style=for-the-badge" alt="Uptime" /></a>
</p>

<p align="center">
  <a href="./README.md">🇺🇸 English</a> •
  <a href="https://texapi.dev">Dashboard</a> •
  <a href="#bắt-đầu-nhanh">Bắt đầu</a> •
  <a href="#bảng-giá">Bảng giá</a> •
  <a href="#dùng-với-claude-code">Claude Code</a> •
  <a href="#dùng-với-openai-codex">Codex CLI</a>
</p>

---

## Tại sao chọn TexAPI?

| Vấn đề | Giải pháp TexAPI |
|--------|-----------------|
| Claude API bị chặn vùng / phải chờ waitlist | ✅ Truy cập ngay, không cần chờ |
| Trả giá đầy đủ cho nhiều AI API khác nhau | ✅ Rẻ hơn tới 70% so với giá gốc |
| Quản lý nhiều API key & hóa đơn | ✅ Một key, một hóa đơn, tất cả models |
| Không có analytics hay kiểm soát chi tiêu | ✅ Dashboard real-time + giới hạn hàng ngày |
| Rate limit trên API chính thức | ✅ Smart routing với tự động fallback |

---

## Models Hỗ Trợ

| Model | Họ | Dùng cho |
|-------|-----|----------|
| `claude-sonnet-4-5` | Claude | Code, phân tích |
| `claude-opus-4-5` | Claude | Suy luận phức tạp |
| `claude-haiku-4-5` | Claude | Nhanh & rẻ |
| `gpt-5.5` | GPT | Flagship mới nhất của OpenAI |
| `gpt-5.4` | GPT | Cân bằng hiệu năng |
| `gpt-5.4-mini` | GPT | Tiết kiệm chi phí |
| `gpt-5.4-nano` | GPT | Siêu rẻ, siêu nhanh |
| `gemini-2.5-pro` | Gemini | Tốt nhất của Google |
| `gemini-2.5-flash` | Gemini | Inference nhanh |
| `gpt-image-2` | Image | Tạo ảnh AI |
| `gpt-oss-120b` | Free | Miễn phí (sau lần nạp đầu) |

> 💡 Danh sách đầy đủ: [`GET /api/models`](https://texapi.dev/api/models)

---

## Bắt Đầu Nhanh

### 1. Đăng ký (30 giây)

Vào [texapi.dev](https://texapi.dev) → Đăng ký bằng Google/GitHub/Discord → Nhận **2 credits miễn phí** ngay lập tức.

### 2. Tạo API Key

Dashboard → API Keys → Tạo Key → Copy key `tex-...` của bạn.

### 3. Gọi API đầu tiên

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

Xong. **API tương thích OpenAI** — hoạt động với mọi SDK hoặc tool hỗ trợ format OpenAI.

---

## Dùng với Claude Code

TexAPI hoạt động như thay thế trực tiếp cho Anthropic API chính thức trong [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

```bash
# Đặt biến môi trường
export ANTHROPIC_BASE_URL=https://texapi.dev
export ANTHROPIC_API_KEY=tex-API_KEY_CUA_BAN

# Chạy Claude Code như bình thường
claude
```

**Windows (PowerShell):**
```powershell
$env:ANTHROPIC_BASE_URL = "https://texapi.dev"
$env:ANTHROPIC_API_KEY = "tex-API_KEY_CUA_BAN"
claude
```

> ✅ Hỗ trợ đầy đủ `/v1/messages` bao gồm streaming, extended thinking, và tool use.

---

## Dùng với OpenAI Codex

```bash
export OPENAI_BASE_URL=https://texapi.dev/v1
export OPENAI_API_KEY=tex-API_KEY_CUA_BAN

codex
```

**Windows (PowerShell):**
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

## Endpoints Tương Thích

| Endpoint | Format | Models |
|----------|--------|--------|
| `POST /v1/chat/completions` | OpenAI | Tất cả models |
| `POST /v1/messages` | Anthropic | Claude models |
| `POST /v1/responses` | OpenAI Responses | GPT models |
| `POST /v1/images/generations` | OpenAI Images | gpt-image-2 |
| `GET /v1/models` | OpenAI | Liệt kê tất cả |

---

## Bảng Giá

### Nạp tiền (Không cần đăng ký gói)

| Số tiền (VND) | Credits | Tương đương USD |
|--------------|---------|-----------------|
| 50,000₫ | 90 | ~$2 |
| 100,000₫ | 180 | ~$4 |
| 200,000₫ | 360 | ~$8 |
| 500,000₫ | 900 | ~$19 |
| 1,000,000₫ | 1,800 | ~$38 |

### Giá theo Model (credits / 1M tokens)

| Model | Input | Output | So với giá gốc |
|-------|-------|--------|----------------|
| claude-sonnet-4-5 | 3.0 | 15.0 | **Rẻ hơn ~60%** |
| claude-haiku-4-5 | 0.8 | 4.0 | **Rẻ hơn ~50%** |
| gpt-5.4 | 0.75 | 4.5 | **Rẻ hơn ~70%** |
| gpt-5.4-mini | 0.225 | 1.35 | **Rẻ hơn ~65%** |
| gemini-2.5-pro | 1.25 | 10.0 | **Rẻ hơn ~50%** |
| gpt-oss-120b | MIỄN PHÍ | MIỄN PHÍ | ∞ |

> 1 credit = 550₫ (~$0.022 USD)

### Gói Subscription

| Gói | Hàng tháng | Credits | RPM | API Keys |
|-----|-----------|---------|-----|----------|
| Starter | 299,000₫ | 550 | 60 | 3 |
| Builder | 749,000₫ | 1,400 | 240 | 10 |
| Pro | 2,090,000₫ | 3,900 | 1,000 | 25 |
| Business | 5,290,000₫ | 10,000 | 3,000 | 100 |

---

## Tính Năng

### 🔀 Smart Routing & Fallback
Nhiều upstream providers với routing theo priority. Nếu một provider sập, request tự động chuyển sang route tiếp theo.

### 📊 Analytics Real-time
Theo dõi usage theo model, theo key, theo ngày. Xem chi phí, latency, và error rate trên dashboard.

### 🔒 Bảo Mật
- API key hash bằng HMAC-SHA256
- Credentials upstream mã hóa AES-256-GCM
- Không lưu nội dung request/response
- Session cookie httpOnly

### 💰 Kiểm Soát Chi Tiêu
- Giới hạn chi tiêu hàng ngày (mặc định 500 credits/ngày)
- Giới hạn hàng tháng theo từng key
- Theo dõi số dư real-time
- Credit reservation cho non-streaming requests

### 🌐 Hỗ Trợ Đa Format
Gửi request dạng OpenAI hoặc Anthropic — TexAPI tự động chuyển đổi format.

### 🎁 Free Tier
`gpt-oss-120b` — model 120B tham số, miễn phí sau lần nạp đầu tiên (10-1000 requests/ngày tùy gói).

### 🤝 Chương Trình Giới Thiệu
Nhận **5% hoa hồng** trên mỗi lần nạp tiền của người bạn mời. Thu nhập thụ động vĩnh viễn.

---

## Kiến Trúc

```
App / IDE / CLI của bạn
        │
        ▼
   TexAPI Gateway (https://texapi.dev/v1)
        │
        ├── Xác thực (API key validation)
        ├── Rate Limiting (RPM/TPM theo key)
        ├── Kiểm tra & Đặt trước Credit
        ├── Smart Routing (theo priority)
        │
        ▼
   Upstream Providers
   ├── Claude (Anthropic)
   ├── GPT (OpenAI)
   ├── Gemini (Google)
   └── Free Models
```

---

## Câu Hỏi Thường Gặp

<details>
<summary><strong>Có hợp pháp không?</strong></summary>

Có. TexAPI là đại lý API hợp pháp, mua capacity từ nhà phân phối ủy quyền với giá sỉ và chia sẻ mức tiết kiệm cho người dùng.
</details>

<details>
<summary><strong>Uptime bao nhiêu?</strong></summary>

99.9%+ uptime với tự động failover giữa nhiều upstream providers.
</details>

<details>
<summary><strong>Dữ liệu có an toàn không?</strong></summary>

TexAPI không lưu trữ bất kỳ nội dung request/response nào. Chỉ metadata (số token, latency, model) được ghi lại cho billing và analytics.
</details>

<details>
<summary><strong>Có dùng cho production được không?</strong></summary>

Hoàn toàn được. Nhiều developer và team dùng TexAPI trong production. Gói Business hỗ trợ tới 3,000 RPM và 100 API keys.
</details>

<details>
<summary><strong>Thanh toán bằng gì?</strong></summary>

Chuyển khoản ngân hàng qua VietQR (tức thì) — hỗ trợ tất cả ngân hàng Việt Nam. Thanh toán quốc tế sắp ra mắt.
</details>

<details>
<summary><strong>Credits có hết hạn không?</strong></summary>

Credits nạp tiền không bao giờ hết hạn. Credits subscription hết hạn cuối mỗi chu kỳ thanh toán.
</details>

---

## Hỗ Trợ

- 🌐 Website: [texapi.dev](https://texapi.dev)
- 💬 Discord: [Tham gia cộng đồng](https://discord.gg/texapi)
- 📧 Email: support@texapi.dev

---

## Star History

Nếu TexAPI giúp bạn tiết kiệm tiền, hãy cho chúng tôi một ⭐ — giúp các developer khác tìm thấy API AI giá rẻ hơn.

---

<p align="center">
  <strong>Đừng trả quá nhiều cho AI API nữa.</strong><br/>
  <a href="https://texapi.dev">Bắt đầu với TexAPI →</a>
</p>
