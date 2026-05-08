---
layout: post
title: LaTeX. Cheat Sheet .
category: LaTeX
---

Вот компактная шпаргалка по самым ходовым командам $\text{\LaTeX}$ для повседневной работы:

### Текст и шрифты

* `\textbf{жирный}` — жирный
* `\textit{курсив}` — курсив
* `\underline{подчеркнутый}` — подчеркнутый
* `\texttt{моноширинный}` — печатная машинка
* `\tiny`, `\small`, `\large`, `\Huge` — размеры шрифта (от крошечного до огромного).

### Структура документа

* `\section{Название}` — заголовок раздела (1)
* `\subsection{Название}` — подраздел (1.1)
* `\appendix` — переход к приложениям
* `\tableofcontents` — автоматическое оглавление

### Списки

* Маркированный:

```latex
\begin{itemize} 
    \item Текст 
\end{itemize}
```
* Нумерованный: 

```latex
\begin{enumerate} 
    \item Текст 
\end{enumerate}
```

### Математика (нужен \usepackage{amsmath})

* `$ ... $` — формула внутри строки.
* `\[ ... \]` — формула на отдельной строке.
* `x^{2}` — верхний индекс ($x^2$).
* `x_{i}` — нижний индекс ($x_i$).
* `\frac{a}{b}` — дробь ($\frac{a}{b}$).
* `\sqrt{x}` — корень ($\sqrt{x}$).

### Спецсимволы и тире

* `---` — длинное тире (—)
* `--` — среднее тире (–)
* `<< >>` — кавычки-елочки (при \usepackage[russian]{babel})
* `\%`, `\$`, `\&`, `\_`, `\{,` `\}` — экранирование служебных знаков.

### Работа с пакетом draftwatermark

* `\SetWatermarkText{...}` — текст водяного знака.
* `\SetWatermarkScale{...}` — размер.
* `\SetWatermarkColor{red!20}` — цвет (нужен xcolor).
* `\DraftwatermarkUnmark` — выключить знак на текущей странице.

---

Ниже — расширенная шпаргалка, включающая таблицы, изображения и дополнительные блоки, которые чаще всего нужны в работе.

### Таблицы (Environment: tabular)

Самый простой способ создать таблицу:

```latex
\begin{tabular}{|l|c|r|} % l-left, c-center, r-right. Вертикальная черта | задает границы
\hline
Заголовок 1 & Заголовок 2 & Заголовок 3 \\ \hline
Данные A & Данные B & Данные C \\ \hline
\end{tabular}
```

* `&` — переход к следующей ячейке.
* `\\` — переход на новую строку.
* `\hline` — горизонтальная линия.

### Изображения (пакет graphicx)

В преамбуле: 

`\usepackage{graphicx}`

В тексте:

```latex
\begin{figure}[h] % [h] - тут (here), [t] - сверху, [b] - снизу
    \centering
    \includegraphics[width=0.5\textwidth]{image_name} % 50% ширины текста
    \caption{Подпись к рисунку}
    \label{fig:my_picture}
\end{figure}
```

### Ссылки и цитаты

* `\label{marker}` — поставить метку на объект (раздел, рисунок).
* `\ref{marker}` — вставить номер этого объекта.
* `\cite{book_id}` — ссылка на литературу (нужен .bib файл или thebibliography).
* `\url{http://...}` — активная гиперссылка (пакет hyperref).

### Окружения (Environments)

* Центрирование: `\begin{center} ... \end{center}`
* Цитата: `\begin{quote} ... \end{quote}`
* Код (как есть): `\begin{verbatim} ... \end{verbatim}`

### Поля и отступы (пакет geometry)

В преамбуле для настройки границ страницы:

`\usepackage[left=2cm, right=1.5cm, top=2cm, bottom=2cm]{geometry}`

### Команды draftwatermark (для управления из текста)

Если нужно менять знак прямо по ходу документа:

* `\SetWatermarkText{\textbf{DRAFT}}` — сделать жирным.
* `\SetWatermarkFontSize{2cm}` — задать точный размер шрифта.
* `\SetWatermarkAngle{0}` — горизонтальный текст.

------------------------------

### Лайфхак для таблиц: 

Чтобы не мучиться с кодом вручную, используйте онлайн-сервис `TablesGenerator.com` — там можно нарисовать таблицу как в `Excel` и просто скопировать готовый код для $\text{\LaTeX}$.

---

Вот полный универсальный шаблон `.tex файла`. В нем уже прописана поддержка кириллицы, настроены поля и подключены все пакеты, которые мы обсуждали (включая водяной знак).

Просто скопируйте этот код в свой редактор:

```latex
\documentclass[12pt,a4paper]{article}

% --- 1. РАБОТА С КИРИЛЛИЦЕЙ (для pdfLaTeX) ---
\usepackage[T2A]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[russian]{babel}

% --- 2. НАСТРОЙКА ПОЛЕЙ (Geometry) ---
\usepackage[left=3cm, right=1.5cm, top=2cm, bottom=2cm]{geometry}

% --- 3. ПАКЕТЫ ДЛЯ ГРАФИКИ И ТАБЛИЦ ---
\usepackage{graphicx}  % Для вставки картинок
\usepackage{amsmath}   % Для красивых формул
\usepackage{xcolor}    % Для работы с цветом
\usepackage{hyperref}  % Для активных ссылок (url, ref)

% --- 4. НАСТРОЙКА ВОДЯНОГО ЗНАКА (draftwatermark) ---
\usepackage{draftwatermark}
\SetWatermarkText{ЧЕРНОВИК} % Текст
\SetWatermarkScale{4}       % Масштаб
\SetWatermarkColor{red!15}  % Цвет (светло-красный)
\SetWatermarkAngle{45}      % Угол

\begin{document}

% --- ОГЛАВЛЕНИЕ ---
\tableofcontents
\newpage

\section{Введение}
Здесь ваш текст. Можно писать по-русски, и длинное тире --- будет отображаться корректно. 

% Пример вставки изображения (раскомментируйте, если есть файл)
% \begin{figure}[h]
%    \centering
%    \includegraphics[width=0.4\textwidth]{image.png}
%    \caption{Подпись к фото}
% \end{figure}

\section{Таблицы и математика}
Пример простой таблицы:
\begin{center}
\begin{tabular}{|l|c|r|}
\hline
Параметр & Значение & Примечание \\ \hline
$x$ & 10 & Формула в строке \\ \hline
$y$ & 20 & Тест \\ \hline
\end{tabular}
\end{center}

Пример выносной формулы:
\[ E = mc^2 \]

\newpage % Переход на новую страницу

% --- ОТКЛЮЧЕНИЕ ВОДЯНОГО ЗНАКА ---
\DraftwatermarkUnmark 
\section{Чистая страница}
На этой странице водяного знака уже не будет.

\section{Полезные ссылки}
Вы можете найти документацию по пакетам на сайте \url{https://ctan.org}.

\end{document}
```
## Как скомпилировать в Linux:

   1. Сохраните файл как `document.tex`.
   2. В терминале выполните: `pdflatex document.tex`.
   3. Или просто откройте его в Texstudio и нажмите F5.











