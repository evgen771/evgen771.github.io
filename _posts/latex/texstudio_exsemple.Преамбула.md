\documentclass[12pt,a4paper]{article}

%\documentclass[a4paper, 12pt, oneside]{ncc}

\usepackage[warn]{mathtext} % русские буквы в формулах, с предупреждением

%\usepackage{biblatex}       % библиография

%\renewcommand{\rmdefault}{ftm} % Основная строчка, которая позволяет получить шрифт Times New Roman

\usepackage[T2A]{fontenc} % внутренняя кодировка TeX

\usepackage{lmodern}

\RequirePackage[T1]{fontenc}

\usepackage[utf8]{inputenc} % кодовая страница документа

\usepackage[english, russian]{babel} % локализация и переносы

\usepackage{indentfirst} % русский стиль: отступ первого абзаца раздела

\usepackage{misccorr} % точка в номерах заголовков

\usepackage{cmap} % русский поиск в pdf

\usepackage{graphicx} % Работа с графикой \includegraphics{} и \graphicspath{}

\graphicspath{ {images/} } % папка с изображениями

%\usepackage{subfigure}   % Три  и более рисунка с индивидуальными ссылками

%\usepackage{wrapfig}     % обтекание рисунка текстом

%\usepackage{subcaption}  % вставка нескольких рисунков рядом друг с другом

\usepackage{psfrag} % Замена тагов на eps картинкаx

%\usepackage{caption} % Работа с подписями для фигур, таблиц и пр.

\usepackage{soul} % Разряженный текст \so{} и подчеркивание \ul{}

\usepackage{soulutf8} % Поддержка UTF8 в soul

\usepackage{fancyhdr} % Для работы с колонтитулами

\usepackage{multirow} % Аналог multicolumn для строк

\usepackage{ltxtable} % Микс tabularx и longtable

\usepackage{paralist} % Списки с отступом только в первой строчке

%\usepackage{longtable}

%\usepackage{tabularx}

\usepackage[perpage]{footmisc} % Нумерация сносок на каждой странице с 1

%\setcounter{page}{3} % начать нумерацию с номера три

\usepackage{mathtools}

\usepackage{amsfonts}

\usepackage{amssymb}

%\usepackage{svg}

\usepackage{titling}  % для вставки картинки на титульную страницу

\usepackage{floatflt} % Узкие плавающие иллюстрации в <оборку> производятся с помощью окружения floatingfigure

\usepackage[a4paper, top=10mm, left=10mm, right=20mm, bottom=15mm]{geometry} % портретный режим размера на экране

% \usepackage[landscape]{geometry}  % альбомный режим

\usepackage[unicode, colorlinks=true]{hyperref} % кликабельное содержание.рамка-colorlinks=true

\usepackage{hyperref}    % гиперссылки

\usepackage{xcolor}    % разрисовать гиперссылки

\setlength{\parindent}{0pt}  % убрать отступы в строках во всем тексте

% Нумерация формул, картинок и таблиц по секциям

%\numberwithin{equation}{section}

%\numberwithin{table}{section}

%\numberwithin{figure}{section}

---
\begin{document}

    \pagenumbering{gobble}% Remove page numbers (and reset to 1)

    \clearpage

    \author{}

    \title{\textbf{Сделано в \LaTeX}\\\textbf{{\normalsize Консольные утилиты в Linux}}\\ {\smallСобрано с "интернета" по нитке...}\\{\normalsize Часть вторая}\\ {\normalsize Мультимедиа.Конвертирование,нарезка,склейка,запись экрана.}}

    \posttitle{\\[\bigskipamount]\includegraphics[width=6cm]{LaTeX_logo_bird.jpg}\end{center}}

    \date{}

    \maketitle

    \newpage

    \tableofcontents

    \clearpage       %

    \pagenumbering{arabic}% Arabic page numbers (and reset to 1)


    \section{Мультимедиа}
        \subsection{Poppler}

\end{document}

*Знак `%` - это зна кзакоментирования строки*

#### Пример готового документа

![](/Files/image/latex/1.png)

![](/Files/image/latex/2.png)

![](/Files/image/latex/3.png)
#преамбула