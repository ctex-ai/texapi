"""
TexAPI — Python Streaming Example
Real-time token streaming for responsive UX.

Install: pip install openai
"""

from openai import OpenAI

client = OpenAI(
    api_key="tex-YOUR_API_KEY",  # Get your key at https://texapi.dev
    base_url="https://texapi.dev/v1",
)

# Streaming chat
stream = client.chat.completions.create(
    model="claude-sonnet-4-5",
    messages=[
        {"role": "user", "content": "Explain how a neural network learns, step by step"},
    ],
    stream=True,
)

for chunk in stream:
    content = chunk.choices[0].delta.content
    if content:
        print(content, end="", flush=True)

print()  # Final newline
