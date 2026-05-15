# Using TexAPI with OpenAI Codex CLI

## What is Codex CLI?

[Codex CLI](https://github.com/openai/codex) is OpenAI's terminal-based coding agent. It can understand your codebase, generate code, and execute commands.

## Why use TexAPI with Codex?

- **Up to 70% cheaper** than official OpenAI pricing
- **Access GPT-5.5, GPT-5.4** and all latest models
- **No region restrictions**
- **Same OpenAI-compatible API**

## Setup

### macOS / Linux

```bash
export OPENAI_BASE_URL=https://texapi.dev/v1
export OPENAI_API_KEY=tex-YOUR_API_KEY
```

Add to `~/.bashrc` or `~/.zshrc` for persistence.

### Windows (PowerShell)

```powershell
$env:OPENAI_BASE_URL = "https://texapi.dev/v1"
$env:OPENAI_API_KEY = "tex-YOUR_API_KEY"
```

### Windows (CMD)

```cmd
set OPENAI_BASE_URL=https://texapi.dev/v1
set OPENAI_API_KEY=tex-YOUR_API_KEY
```

### Verify

```bash
codex "explain this codebase"
```

## Supported Features

| Feature | Status |
|---------|--------|
| Chat Completions | ✅ |
| Streaming | ✅ |
| Responses API | ✅ |
| Function Calling | ✅ |
| File Operations | ✅ |

## Recommended Models

| Model | Best For | Cost |
|-------|----------|------|
| `gpt-5.4` | Daily coding | 0.75 / 4.5 credits per 1M tokens |
| `gpt-5.5` | Complex tasks | 1.5 / 9.0 credits per 1M tokens |
| `gpt-5.4-mini` | Quick tasks | 0.225 / 1.35 credits per 1M tokens |
| `gpt-5.4-nano` | Ultra-cheap | 0.06 / 0.375 credits per 1M tokens |

## Troubleshooting

### "Invalid API key"
- TexAPI keys start with `tex-`, not `sk-`
- Ensure `OPENAI_BASE_URL` points to `https://texapi.dev/v1` (with `/v1`)

### "Model not found"
- Use TexAPI model names: `gpt-5.4`, not `gpt-4o`
- Check available models: `curl https://texapi.dev/v1/models -H "Authorization: Bearer tex-YOUR_KEY"`

---

[← Back to main README](../README.md)
