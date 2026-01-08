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
      <li class="post-item">
        <!-- Ссылка на пост -->
        <a href="{{ post.url }}" class="post-title">
          {{ post.title }}
        </a>
        
        <!-- Дата публикации -->
        <p class="post-meta">
          {{ post.date | date: "%d %B %Y! }}
        </p>
        
        <!-- Отрывок (если есть) -->
        {% if post.excerpt %}
          <p class="post-excerpt">
            {{ post.excerpt }}
          </p>
        {% endif %}
      </li>
    {% endif %}
  {% endfor %}
</ul>

