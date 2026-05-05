Настройка XeLaTeX — это самый удобный способ работы в LaTeX сегодня, потому что он понимает шрифты в форматах .ttf и .otf (как в Word).
Чтобы всё заработало, вам нужно сделать две вещи: сменить «движок» компиляции в настройках вашего редактора и правильно составить преамбулу.
## 1. Настройка редактора
По умолчанию редакторы (TeXstudio, Overleaf, TeXmaker) используют pdfLaTeX. Вам нужно переключить их на XeLaTeX:

* Overleaf: Menu → Compiler → XeLaTeX.
* TeXstudio: Параметры → Настройка → Сборка → Команда по умолчанию → XeLaTeX.

## 2. Шаблон кода (Преамбула)
В XeLaTeX не нужно использовать пакеты inputenc и fontenc. Вместо них используется fontspec.

\documentclass[12pt,a4paper]{article}

% --- Настройка языков ---
\usepackage{polyglossia}      % Аналог babel для XeLaTeX
\setmainlanguage{russian}
\setotherlanguage{english}

% --- Настройка шрифтов ---
\usepackage{fontspec} 

% Указывайте точные названия шрифтов, как они называются в вашей системе
\setmainfont{Times New Roman}  % Шрифт с засечками (основной)
\setsansfont{Arial}            % Шрифт без засечек
\setmonofont{Courier New}      % Моноширинный (для кода)

\begin{document}

Основной текст будет набран в Times New Roman. 

{\sffamily Этот текст будет в Arial (sans-serif).}

\texttt{А этот текст — в Courier New (monospaced).}

\end{document}

## 3. Как искать названия шрифтов?
Если вы не уверены, как правильно пишется название шрифта для команды \setmainfont:

* Windows: Панель управления → Шрифты.
* macOS: Font Book (Справка о шрифтах).
* Linux: Команда в терминале fc-list : family.

## Почему это лучше PSCyr?

   1. Любые шрифты: Можете использовать хоть Comic Sans, хоть Georgia, хоть профессиональные платные шрифты.
   2. Масштабирование: Можно легко менять размер или добавлять жирность/курсив, если у шрифта есть соответствующие файлы в системе.
   3. Unicode: Поддержка спецсимволов и любых языков «из коробки».



