# Using TexAPI with Claude Code

## What is Claude Code?

[Claude Code](https://docs.anthropic.com/en/docs/claude-code) is Anthropic's official AI coding assistant that runs in your terminal. It can read your codebase, write code, run commands, and help you build software faster.

## Why use TexAPI with Claude Code?

- **Up to 60% cheaper** than official Anthropic pricing
- **No waitlist** — instant access
- **No region restrictions** — works worldwide
- **Same quality** — same Claude models, same capabilities

## Setup

### macOS / Linux

Add to your `~/.bashrc`, `~/.zshrc`, or `~/.profile`:

```bash
export ANTHROPIC_BASE_URL=https://texapi.dev
export ANTHROPIC_API_KEY=tex-YOUR_API_KEY
```

Then restart your terminal or run `source ~/.zshrc`.

### Windows (PowerShell)

Add to your PowerShell profile (`$PROFILE`):

```powershell
$env:ANTHROPIC_BASE_URL = "https://texapi.dev"
$env:ANTHROPIC_API_KEY = "tex-YOUR_API_KEY"
```

Or set system environment variables:

1. Open **System Properties** → **Environment Variables**
2. Add `ANTHROPIC_BASE_URL` = `https://texapi.dev`
3. Add `ANTHROPIC_API_KEY` = `tex-YOUR_API_KEY`

### Verify

```bash
claude
# Claude Code should start normally and use TexAPI as the backend
```

## Supported Features

| Feature | Status |
|---------|--------|
| Chat / Conversation | ✅ |
| Streaming | ✅ |
| Extended Thinking | ✅ |
| Tool Use | ✅ |
| File Reading/Writing | ✅ |
| Command Execution | ✅ |
| Multi-turn Context | ✅ |

## Recommended Models

| Model | Best For | Cost |
|-------|----------|------|
| `claude-sonnet-4-5` | Daily coding (default) | 3.0 / 15.0 credits per 1M tokens |
| `claude-opus-4-5` | Complex architecture | 15.0 / 75.0 credits per 1M tokens |
| `claude-haiku-4-5` | Quick tasks | 0.8 / 4.0 credits per 1M tokens |

## Troubleshooting

### "Authentication failed"
- Make sure your API key starts with `tex-`
- Check that the key is active in your [TexAPI Dashboard](https://texapi.dev)

### "Insufficient credits"
- Top up at [texapi.dev/billing](https://texapi.dev/billing)
- Minimum top-up: 50,000₫ (~$2)

### "Rate limited"
- Default: 60 RPM on Starter plan
- Upgrade your plan or wait a moment

---

[← Back to main README](../README.md)
