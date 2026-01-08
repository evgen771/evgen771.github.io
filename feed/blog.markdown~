---
layout: page
title: Блог
feed-type: blog
permalink: /feed/blog
---

<h3>{{ page.title }}</h3>


<ul class="post-list">
  {% for post in site.posts %}
    {% if 'blog' in post.categories %}
      <li>
        <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
        <p class="post-meta">{{ post.date | date: "%d %B %Y! }}</p>
        {% if post.excerpt %}
          <p class="post-excerpt">{{ post.excerpt }}</p>
        {% endif %}
      </li>
    {% endif %}
  {% endfor %}
</ul>

