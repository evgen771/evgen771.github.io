---
layout: post
title:   Beamer. Размещение кадров 
category: LaTeX_Beamer
---

#### Теперь давайте кратко рассмотрим создание материалов для нашей презентации. 

Для этого мы добавляем ключевое слово в квадратные скобки в команде `\documentclass` `handout`:

```latex
\documentclass[handout]{beamer}
```

Затем мы используем упаковку для печати нескольких слайдов на странице `pgfpages`.  

После загрузки пакета мы используем команду:

```latex
\usepackage{pgfpages}
```

В фигурных скобках мы указываем, сколько кадров мы хотим разместить на листе `\pgfpagesuselayout`. 

В квадратных скобках указываем размер бумаги и толщину границы:

```latex
\pgfpagesuselayout{2 on 1}[a4paper,border shrink=5mm]
```
#### Все вместе

```latex
\documentclass[handout]{beamer}
\usepackage{pgfpages}
\pgfpagesuselayout{2 on 1}[a4paper,border shrink=5mm]
```

![Beamer5handout1.png](https://sharelatex-wiki-cdn-671420.c.cdn77.org/learn-scripts/images/0/08/Beamer5handout1.png)

Чтобы добавить 4 кадра на лист, нужно просто заменить 2 на 4 в фигурных скобках и добавить ландшафтый режим в квадратных:

`landscape`

```latex
\pgfpagesuselayout{4 on 1}[a4paper,border shrink=5mm,landscape]
```

![Beamer5handout2.png](https://sharelatex-wiki-cdn-671420.c.cdn77.org/learn-scripts/images/e/ec/Beamer5handout2.png)
