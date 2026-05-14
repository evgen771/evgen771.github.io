---
layout: post
title:   Beamer. Презентация средствами LaTeX
category: LaTeX_Beamer
---

[Beamer: презентация средствами LaTeX — Блог программиста](https://pro-prof.com/forums/topic/beamer-%D0%BF%D1%80%D0%B5%D0%B7%D0%B5%D0%BD%D1%82%D0%B0%D1%86%D0%B8%D1%8F-%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B0%D0%BC%D0%B8-latex)

Beamer это класс для LaTeX, позволяющий создавать слайды для презентаций. Возможно включение сложных математических формул, иллюстраций, анимации, аудио и видео. Есть набор тем для разукрашивания слайдов.

Позволяет создать презентацию из LaTeX-документа в виде PDF-документа. При этом удобно набирать формулы, делать ссылки между слайдами и вставлять внешние медиа ресурсы.

<h3>Установка</h3>

Установка Beamer, предполагается что LaTeX уже установлен.


Первая презентация

В преамбулу LaTeX документа добавляем класс 

beamer

и описываем каждый слайд в окружении frame. Beamer автоматически подгружает некоторые из LaTeX пакетов: xcolor, amsmath, amsthm, calc, geometry, hyperref, extsizes.

\begin{frame}

.......

\end{frame}

Стандартные пропорции слайда — 4:3, если хочется сделать презентацию для другого соотношения сторон (например, 16:9), следует в необязательном аргументе команды 

\documentclass

 указать 

aspectratio=169

<h3>Пример презентации в Beamer</h3>

\documentclass[10pt,pdf,hyperref={unicode}]{beamer}

% \documentclass[aspectratio=43]{beamer}

% \documentclass[aspectratio=1610]{beamer}

% \documentclass[aspectratio=169]{beamer}

\usepackage{lmodern}

% подключаем кириллицу

\usepackage[T2A]{fontenc}

\usepackage[utf8]{inputenc}

% отключить клавиши навигации

\setbeamertemplate{navigation symbols}{}

% тема оформления

\usetheme{CambridgeUS}

% цветовая схема

\usecolortheme{seahorse}

\title{The title of presentation}

\subtitle{Use beamer everywhere you are}

\author{proft}

\date{\today}

% \logo{\includegraphics[height=5mm]{images/logo.png}\vspace{-7pt}}

\begin{document}

% титульный слайд

\begin{frame}

\titlepage

\end{frame}

\begin{frame}

\frametitle{frame title}

\framesubtitle{subtitle}

body

\end{frame}

\begin{frame}

\frametitle{frame title}

\begin{center}

\includegraphics[width=0.8\paperwidth]{images/figure.png}

\end{center}

\end{frame}

\end{document}

Для того, чтобы выделить важную часть текста можно воспользоваться окружением block

\begin{block}{title of block}

...

\end{block}

\begin{alertblock}{title of alert block}

...

\end{alertblock}

\begin{exampleblock}{title of example block}

...

\end{exampleblock}

<h3>Анимация смены слайдов в Beamer</h3>

Beamer поддерживает анимации при переходе от элемента к элементу или от слайда к слайду.

Ниже приведен пример слайда с плавным появлением элементов списка (лучше один раз увидеть, чем пытаться объяснить)

\begin{frame}

\begin{itemize}

\item<1-> первый элемент

\item<2-> второй элемент

\item<3-> третий элемент

\item<4-> четвертый элемент

\end{itemize}

\end{frame}

<h3>Вставка листинга программы в Latex-презентацию</h3>

Воспользуемся для этого пакетом 

listings

предварительно добавив 

\usepackage{listings}

 в преамбулу документа.

Пример слайда с листингом

\begin{frame}[fragile]

\begin{lstlisting}

import antigravity

\end{lstlisting}

<h3>Полезные рецепты</h3>

**Чистый слайд (без шапки и подвала)**

\begin{frame}[plain]

Lorem ipsum ...

\end{frame}

Сжимаем слайд по вертикали, если много текста:

\begin{frame}[shrink]

Lorem ipsum ...

\end{frame}

Beamer позволяет легко ссылаться на любой слайд

\begin{frame}[label=frame_A]

\frametitle{frame A}

\begin{center}

\hyperlink{frame_X}{\beamerbutton{Go to frame X}}

\end{center}

\end{frame}

.

.

.

\begin{frame}[label=frame_X]

\frametitle{frame X}

\begin{center}

\hyperlink{frame_A}{\beamerbutton{Back}}

\end{center}

\end{frame}

Пример создание двух колонок по 5 см.

\begin{columns}

\begin{column}[t]{5cm}

....

\end{column}

\begin{column}[t]{5cm}

.....

\end{column}

\end{columns}

Меняем цвет фона для слайда

\setbeamercolor{normal text}{bg=green}

\begin{frame}

...

\end{frame}

% возврат предыдущего цвета

\setbeamercolor{normal text}{bg=white}