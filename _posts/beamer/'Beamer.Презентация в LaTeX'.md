---
layout: post
title:   Beamer. Презентация в LaTeX
category: LaTeX_Beamer
---

[Чтобы удивиться, достаточно одной минуты; чтобы сделать удивительную вещь, нужны многие годы.: Презентация в LaTeX. Beamer.](https://ego-machine.blogspot.com/2010/03/latex-beamer.html)

## Начнем создавать презентацию.

### Заглавный слайд ( в тексте презентации после значка % даются некоторые комментарии )

```latex
\documentclass{beamer}
\usepackage[english,russian]{babel}
\usepackage[utf8]{inputenc}
% Стиль презентации
\usetheme{Warsaw}
\begin{document}
\title{Все что вы хотели знать...}  
\author{Доцент}
\institute{Научно исследовательский институт}
\date{today} 
% Создание заглавной страницы
\frame{\titlepage} 
% Автоматическая генерация содержания
\frame{\frametitle{Содержание}
    \tableofcontents} 
\end{document}
```

### Слайд помещается в следующие переменные окружения 

```latex
\frame{}
или
\begin{frame}
    .......
\end{frame}
```
Про помощи **\usetheme** задается тема оформления презентации:

`\usetheme{Warsaw}`
  
### Вот как можно вставлять изображения в презентацию  

```latex
\begin{frame}{Вот он наш герой}
 \begin{center}
  \includegraphics{Sphere_horse.jpg}  
 \end{center}
\end{frame}
```
### Слайд с библиографией 
 
```latex 
\begin{frame}{Список литературы}  
\begin{thebibliography}{10} 
\beamertemplatebookbibitems 
\bibitem{LurkHorse} {\sc Lurkmore}, {\em Сферический конь в вакууме}. 
\bibitem{AbsHorse} {\sc Абсурдопедия}, {\em Сферический конь в вакууме}. 
\end{thebibliography} 
\end{frame}
```


