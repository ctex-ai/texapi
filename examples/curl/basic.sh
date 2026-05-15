#!/bin/bash
# TexAPI — cURL Examples
# Quick API testing from the command line

API_KEY="tex-YOUR_API_KEY"
BASE_URL="https://texapi.dev/v1"

echo "=== Chat Completion (Claude) ==="
curl -s "$BASE_URL/chat/completions" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "claude-sonnet-4-5",
    "messages": [{"role": "user", "content": "Say hello in 5 languages"}],
    "max_tokens": 200
  }' | python3 -m json.tool

echo ""
echo "=== Chat Completion (GPT) ==="
curl -s "$BASE_URL/chat/completions" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-5.4",
    "messages": [{"role": "user", "content": "What is 2+2?"}],
    "max_tokens": 50
  }' | python3 -m json.tool

echo ""
echo "=== List Models ==="
curl -s "$BASE_URL/models" \
  -H "Authorization: Bearer $API_KEY" | python3 -m json.tool

echo ""
echo "=== Free Model (gpt-oss-120b) ==="
curl -s "$BASE_URL/chat/completions" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-oss-120b",
    "messages": [{"role": "user", "content": "Tell me a programming joke"}],
    "max_tokens": 100
  }' | python3 -m json.tool
