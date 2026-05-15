# Windows Setup Guide

## Environment Variables (Permanent)

### PowerShell Profile

Add to your PowerShell profile (`$PROFILE`):

```powershell
# TexAPI for Claude Code
$env:ANTHROPIC_BASE_URL = "https://texapi.dev"
$env:ANTHROPIC_API_KEY = "tex-YOUR_API_KEY"

# TexAPI for Codex CLI
$env:OPENAI_BASE_URL = "https://texapi.dev/v1"
$env:OPENAI_API_KEY = "tex-YOUR_API_KEY"

# TexAPI for Gemini CLI
$env:GEMINI_API_BASE = "https://texapi.dev/v1"
$env:GEMINI_API_KEY = "tex-YOUR_API_KEY"
```

### System Environment Variables

1. Press `Win + R` → type `sysdm.cpl` → Enter
2. Go to **Advanced** tab → **Environment Variables**
3. Under **User variables**, click **New** for each:

| Variable | Value |
|----------|-------|
| `ANTHROPIC_BASE_URL` | `https://texapi.dev` |
| `ANTHROPIC_API_KEY` | `tex-YOUR_API_KEY` |
| `OPENAI_BASE_URL` | `https://texapi.dev/v1` |
| `OPENAI_API_KEY` | `tex-YOUR_API_KEY` |

4. Click **OK** → Restart your terminal

## Verify

```powershell
# Check variables are set
echo $env:ANTHROPIC_BASE_URL
# Should output: https://texapi.dev

# Test with Claude Code
claude

# Test with Codex
codex
```

## Troubleshooting

### "ANTHROPIC_BASE_URL not recognized"
- Make sure you restarted your terminal after setting env vars
- If using VS Code, restart VS Code entirely

### "Connection refused"
- Check if your firewall/antivirus is blocking outbound HTTPS
- Try: `curl https://texapi.dev/v1/models -H "Authorization: Bearer tex-YOUR_KEY"`

---

[← Back to main README](../README.md)
