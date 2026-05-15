"""
TexAPI — Python Chat Example
Works with any OpenAI-compatible SDK.

Install: pip install openai
"""

from openai import OpenAI

client = OpenAI(
    api_key="tex-YOUR_API_KEY",  # Get your key at https://texapi.dev
    base_url="https://texapi.dev/v1",
)

# Simple chat
response = client.chat.completions.create(
    model="claude-sonnet-4-5",
    messages=[
        {"role": "system", "content": "You are a helpful coding assistant."},
        {"role": "user", "content": "Write a Python function to find prime numbers using Sieve of Eratosthenes"},
    ],
)

print(response.choices[0].message.content)
