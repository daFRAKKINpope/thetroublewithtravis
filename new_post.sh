#!/bin/bash

# Clean mode
if [[ "$1" == "clean" ]]; then
  echo "Cleaning default content from posts..."

  find /root/git/websites/thetroublewithtravis/_posts/ -type f -name "*.md" | while read -r FILE; do
    awk '
      BEGIN { inBlock = 0 }
      /Welcome to your new post! Here are some tips and tricks/ { inBlock = 1 }
      inBlock && /^```bash/ { print; inBlock = 0; next }
      !inBlock { print }
    ' "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
    echo "Cleaned: $FILE"
  done

  exit 0
fi

# Prompt for title
read -p "Enter the blog post title: " TITLE

# Format slug
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g' | sed -E 's/^-|-$//g')

# Date and time
DATE=$(date -d 'now' '+%Y-%m-%d')
DATETIME=$(date -d 'now' '+%Y-%m-%d %H:%M:%S %z')

# File path
POST_PATH="/root/git/websites/thetroublewithtravis/_posts/${DATE}-${SLUG}.md"

# Create file
cat > "$POST_PATH" <<EOF
---
layout: post
title:  "$TITLE"
date:   $DATETIME
---

{% comment %}
Welcome to your new post! Here are some tips and tricks for using **Markdown** and **Jekyll code snippets** effectively.

## 📌 Code Snippets in Jekyll

Wrap your code in Liquid highlight blocks for syntax highlighting. Example:

{% raw %}
\`\`\`ruby
def greet(name)
  puts "Hello, \#{name}!"
end
greet('Travis')
# => Hello, Travis!
\`\`\`
{% endraw %}

For inline code, use single backticks like \`this\`.

---

## 💡 Markdown Formatting Cheat Sheet

| Action            | Syntax                      | Result                |
|-------------------|-----------------------------|------------------------|
| Bold              | \`**bold text**\`           | **bold text**         |
| Italic            | \`*italic text*\`           | *italic text*         |
| Bold + Italic     | \`***bold+italic***\`       | ***bold+italic***     |
| Strikethrough     | \`~~strikethrough~~\`       | ~~strikethrough~~     |
| Inline code       | \`\`code\`\`                | \`code\`              |
| Link              | \`[text](url)\`             | [text](url)           |
| Image             | \`![alt](image.jpg)\`       | ![alt](image.jpg)     |
| Heading 1         | \`# H1\`                    | # H1                  |
| Heading 2         | \`## H2\`                   | ## H2                 |
| Blockquote        | \`> quote\`                 | > quote               |
| List (unordered)  | \`- item\`                  | - item                |
| List (ordered)    | \`1. item\`                 | 1. item               |

---

Happy writing! When you're done, commit and push to publish:
\`\`\`bash
git add "$POST_PATH"
git commit -m "Add new post: $TITLE"
git push
\`\`\`
{% endcomment $}
EOF

# Open the file
nano "$POST_PATH"
