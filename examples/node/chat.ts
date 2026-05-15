/**
 * TexAPI — Node.js Chat Example
 * Works with the official OpenAI SDK.
 *
 * Install: npm install openai
 */

import OpenAI from "openai";

const client = new OpenAI({
  apiKey: "tex-YOUR_API_KEY", // Get your key at https://texapi.dev
  baseURL: "https://texapi.dev/v1",
});

async function main() {
  // Streaming example
  const stream = await client.chat.completions.create({
    model: "claude-sonnet-4-5",
    messages: [
      { role: "system", content: "You are a senior software engineer." },
      { role: "user", content: "Review this code and suggest improvements:\n\nfunction sort(arr) { return arr.sort((a,b) => a-b); }" },
    ],
    stream: true,
  });

  for await (const chunk of stream) {
    const content = chunk.choices[0]?.delta?.content;
    if (content) process.stdout.write(content);
  }

  console.log();
}

main().catch(console.error);
