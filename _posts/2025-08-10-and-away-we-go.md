---
layout: post
title:  "And away we go..."
date:   2025-08-10 08:35:05 -0500
---
# Today is a beautiful day. 
It really is. I woke up and took a walk with the sunrise. It wasn't too hot, not to cold. Beautiful as the sun crept over the horizon. It ain't home. But it's somethin'. 

# This is a second test
So, as I'm sure you've figured out, this is a blog site. This is a second test. It should do the following 
- Using the .sh script make it easy for me to build a new blog post. Put everything where it needs to be, and present a blog for me with a quickref on what to use in markdown using Jekyll. 
- Add the title using the config I found. No longer should this website be titled 'your awesome title'. Should now be the trouble with travis. 
- Display the new article on the homepage.

No. I still don't have a dark mode. Which is a bummer. But I just can't figure out how to add themes yet. It's pretty high on my priority. I was able to get around it locally by updating Jekyll to a newer version, which supports dark mode on the basic theme. Buuuuut since I'm not self hosting it and putting it up on git, I can't controll which version of Jekyll they use. So... it's a problem. I'll probably get around it by learning how to use themes. But that'll probably be in seperate commits. 

Look, I know this site doesn't have a lot going on at the moment. I also cannot promise you what kinda content this site will actually host. But what I can promise you is that it'll host, something. It'll be good. Promise. 

{% comment %}
If this works I'll need to add it to the template. If not, well, shit. 
Welcome to your new post! Here are some tips and tricks for using **Markdown** and **Jekyll code snippets** effectively.

## 📌 Code Snippets in Jekyll

Wrap your code in Liquid highlight blocks for syntax highlighting. Example:

{% raw %}
```ruby
def greet(name)
  puts "Hello, \#{name}!"
end
greet('Travis')
# => Hello, Travis!
```
{% endraw %}

For inline code, use single backticks like `this`.

---

## 💡 Markdown Formatting Cheat Sheet

| Action            | Syntax                      | Result                |
|-------------------|-----------------------------|------------------------|
| Bold              | `**bold text**`           | **bold text**         |
| Italic            | `*italic text*`           | *italic text*         |
| Bold + Italic     | `***bold+italic***`       | ***bold+italic***     |
| Strikethrough     | `~~strikethrough~~`       | ~~strikethrough~~     |
| Inline code       | ``code``                | `code`              |
| Link              | `[text](url)`             | [text](url)           |
| Image             | `![alt](image.jpg)`       | ![alt](image.jpg)     |
| Heading 1         | `# H1`                    | # H1                  |
| Heading 2         | `## H2`                   | ## H2                 |
| Blockquote        | `> quote`                 | > quote               |
| List (unordered)  | `- item`                  | - item                |
| List (ordered)    | `1. item`                 | 1. item               |

---

Happy writing! When you're done, commit and push to publish:
```bash
git add "/root/git/websites/thetroublewithtravis/_posts/2025-08-10-and-away-we-go.md"
git commit -m "Add new post: And away we go..."
git push
```
{% endcomment %}
