# Using TexAPI with Gemini CLI

## What is Gemini CLI?

[Gemini CLI](https://github.com/google-gemini/gemini-cli) is Google's terminal-based AI coding assistant powered by Gemini models.

## Why use TexAPI with Gemini CLI?

- **Up to 50% cheaper** than official Google pricing
- **Access Gemini 2.5 Pro & Flash**
- **Combined billing** with Claude and GPT models
- **No Google Cloud setup required**

## Setup

### macOS / Linux

```bash
export GEMINI_API_BASE=https://texapi.dev/v1
export GEMINI_API_KEY=tex-YOUR_API_KEY
```

Add to `~/.bashrc` or `~/.zshrc` for persistence.

### Windows (PowerShell)

```powershell
$env:GEMINI_API_BASE = "https://texapi.dev/v1"
$env:GEMINI_API_KEY = "tex-YOUR_API_KEY"
```

### Verify

```bash
gemini
```

## Supported Models

| Model | Best For | Cost |
|-------|----------|------|
| `gemini-2.5-pro` | Complex reasoning | 1.25 / 10.0 credits per 1M tokens |
| `gemini-2.5-flash` | Fast responses | 0.15 / 0.6 credits per 1M tokens |

## Troubleshooting

### "API key invalid"
- Make sure you're using a TexAPI key (`tex-...`), not a Google AI Studio key
- Verify the key is active in your dashboard

### "Connection refused"
- Check that `GEMINI_API_BASE` is set to `https://texapi.dev/v1`

---

[← Back to main README](../README.md)
