## Beamer + Markdown

*Компилятор LaTeX (pdflatex, xelatex) не понимает синтаксис YAML*.

Однако, если вы хотите использовать привычную структуру метаданных (автор, название) в самом `LaTeX`-коде, это делается стандартными командами в преамбуле.

## Как это выглядит в чистом LaTeX (Beamer):

```latex
\documentclass[aspectratio=1609]{beamer} % Соотношение сторон

% Настройки языка и шрифтов (аналог -V lang=ru-RU и mainfont)
\usepackage[russian]{babel}
\usepackage{fontspec}
\setmainfont{Arial}

% Тема (аналог theme и colortheme)
\usetheme{Metropolis}
\usecolortheme{dolphin}

% Метаданные (аналог title, author, date)
\title{Моя презентация}
\subtitle{Сделано в чистом LaTeX}
\author{Иван Иванов}
\date{2024}

\begin{document}

\begin{frame}
  \titlepage % Создает титульный слайд
\end{frame}

\begin{frame}{Заголовок слайда}
  \begin{itemize}
    \item Первый пункт
    \item Второй пункт
  \end{itemize}
\end{frame}

\end{document}
```

## Если вы хотите «скрестить» Pandoc и свой LaTeX-шаблон:

Если у вас уже есть готовый `.tex` файл с идеальной преамбулой и вы хотите, чтобы `Pandoc` вставлял туда ваш `Markdown`-текст, сделайте так:

   1. В вашем `.tex` файле в месте, где должен начинаться контент, напишите: `$body$`.
   2. Сохраните этот файл как `my-template.tex`.
   3. Запустите Pandoc:
   `pandoc slides.md --template=my-template.tex -o slides.pdf`

## Зачем это нужно?

Это позволяет один раз настроить сложную преамбулу со всеми логотипами и отступами в `LaTeX`, а сам контент (слайды) писать быстро на простом `Markdown`.



