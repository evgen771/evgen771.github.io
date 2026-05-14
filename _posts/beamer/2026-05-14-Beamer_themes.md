---
layout: post
title:   Beamer. Themes
categories: Beamer
---

### Встроенные темы в beamer

Тему в Beamer можно задать с помощью команды `\usetheme{themeName}`. В Beamer есть 27 встроенных тем:


|                                                                                |                                                                                |                                                                                |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| [default](https://latex-beamer.com/tutorials/beamer-themes/#default)           | [Darmstadt](https://latex-beamer.com/tutorials/beamer-themes/2/#Darmstadt)     | [Malmoe](https://latex-beamer.com/tutorials/beamer-themes/4/#Malmoe)           |
| [AnnArbor](https://latex-beamer.com/tutorials/beamer-themes/#annarbor)         | [Dresden](https://latex-beamer.com/tutorials/beamer-themes/2/#Dresden)         | [Marburg](https://latex-beamer.com/tutorials/beamer-themes/4/#Marburg)         |
| [Antibes](https://latex-beamer.com/tutorials/beamer-themes/#Antibes)           | [Frankfurt](https://latex-beamer.com/tutorials/beamer-themes/3/#Frankfurt)     | [Montpellier](https://latex-beamer.com/tutorials/beamer-themes/4/#Montpellier) |
| [Bergen](https://latex-beamer.com/tutorials/beamer-themes/#Bergen)             | [Goettingen](https://latex-beamer.com/tutorials/beamer-themes/3/#Goettingen)   | [PaloAlto](https://latex-beamer.com/tutorials/beamer-themes/5/#PaloAlto)       |
| [Berkeley](https://latex-beamer.com/tutorials/beamer-themes/#Berkeley)         | [Hannover](https://latex-beamer.com/tutorials/beamer-themes/3/#Hannover)       | [Pittsburgh](https://latex-beamer.com/tutorials/beamer-themes/5/#Pittsburgh)   |
| [Berlin](https://latex-beamer.com/tutorials/beamer-themes/#Berlin)             | [Ilmenau](https://latex-beamer.com/tutorials/beamer-themes/3/#Ilmenau)         | [Rochester](https://latex-beamer.com/tutorials/beamer-themes/5/#Rochester)     |
| [Boadilla](https://latex-beamer.com/tutorials/beamer-themes/2/#Boadilla)       | [JuanLesPins](https://latex-beamer.com/tutorials/beamer-themes/3/#JuanLesPins) | [Singapore](https://latex-beamer.com/tutorials/beamer-themes/5/#Singapore)     |
| [CambridgeUS](https://latex-beamer.com/tutorials/beamer-themes/2/#CambridgeUS) | [Luebeck](https://latex-beamer.com/tutorials/beamer-themes/4/#Luebeck)         | [Szeged](https://latex-beamer.com/tutorials/beamer-themes/5/#Szeged)           |
| [Copenhagen](https://latex-beamer.com/tutorials/beamer-themes/2/#Copenhagen)   | [Madrid](https://latex-beamer.com/tutorials/beamer-themes/4/#Madrid)           | [Warsaw](https://latex-beamer.com/tutorials/beamer-themes/5/#Warsaw)           |
Следует отметить, что эти темы вносят изменения в глобальную структуру презентации.

### Минимальный рабочий пример

Следующий код используется для **создания презентации Beamer** для различных тем. Он включает в себя титульный лист, рамку плана, рамки списков и блоков. Вы можете изменить используемую тему и нажать кнопку **«Компилировать**», или просто ознакомиться с полученными презентациями ниже!

    % Inbuilt themes in beamer
    \documentclass{beamer}

    % Theme choice:
    \usetheme{CambridgeUS}

    % Title page details: 
    \title{Beamer Inbuilt Themes (CambridgeUS)} 
    \author{latex-beamer.com}
    \date{\today}
    \logo{\large \LaTeX{}}


    \begin{document}

    % Title page frame
    \begin{frame}
        \titlepage 
    \end{frame}

    % Remove logo from the next slides
    \logo{}


    % Outline frame
    \begin{frame}{Outline}
        \tableofcontents
    \end{frame}


    % Lists frame
    \section{Lists in Beamer}
    \begin{frame}{Lists in Beamer}

    This is an unordered list:
    \begin{itemize}
        \item Item 1
        \item Item 2
        \item Item 3
    \end{itemize}

    and this is an ordered list:
    \begin{enumerate}
        \item Item 1
        \item Item 2
        \item Item 3
    \end{enumerate}

    \end{frame}


    % Blocks frame
    \section{Blocks in Beamer}
    \begin{frame}{Blocks in Beamer}
        \begin{block}{Standard Block}
            This is a standard block.
        \end{block}
        \begin{alertblock}{Alert Message}
            This block presents alert message.
        \end{alertblock}
        \begin{exampleblock}{An example of typesetting tool}
            Example: MS Word, \LaTeX{}
        \end{exampleblock}
    \end{frame} 

    \end{document}

