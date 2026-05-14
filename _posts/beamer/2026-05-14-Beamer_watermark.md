---
layout: post
title:   Beamer. Watermark
categories: Beamer
---

В своей презентации с использованием `Beamer` я хочу использовать какое-то изображение в качестве фона на некоторых слайдах. 

Я напишу кое-что и на этих слайдах.

### Как я могу это сделать?

Вы также можете использовать (где `background.jpg` — это ваша картинка):

`\setbeamertemplate{background} {\includegraphics[width=\paperwidth,height=\paperheight,keepaspectratio]{background.jpg}}`

Пример предыстории:

![Введите описание изображения здесь](https://i.sstatic.net/jFcW9.jpg)

**Код**

```latex
\documentclass{beamer}
\setbeamertemplate{background}
{\includegraphics[width=\paperwidth,height=\paperheight,keepaspectratio]{background.jpg}}


\begin{document}

\begin{frame}

\begin{exampleblock}{Test}
\begin{itemize}
\item First item.
\end{itemize}
\end{exampleblock}

\end{frame}

\end{document}
```

![Введите описание изображения здесь](https://i.sstatic.net/eanaA.png)



> Предположим, я хочу использовать (изображение в Google) в качестве фона на некоторых из моих слайдов. 
> 
> Но тогда письменные документы будут непонятны. Как преобразовать изображение в водяной знак?

Здесь можно использовать опцию непрозрачности, предоставляемую как `tikz`

```latex
\setbeamertemplate{background canvas}
{\begin{tikzpicture}\node[opacity=.1]{\includegraphics [width=\paperwidth]{example-image.pdf}};\end{tikzpicture}}
```

*Значения непрозрачности можно изменять от 0 до 1 в зависимости от запроса.*

**Код:**

```latex
\documentclass{beamer}
\usepackage{tikz}
\setbeamertemplate{background canvas}{\begin{tikzpicture}\node[opacity=.1]{\includegraphics
[width=\paperwidth]{example-image.pdf}};\end{tikzpicture}} % only for the image: http://ctan.org/pkg/mwe
% \setbeamertemplate{background}{\includegraphics[width=\paperwidth]{example-image.pdf}}

\begin{document}
\begin{frame}{Testing Background Image}
    Hello!
\end{frame}
\end{document}
```

![Введите описание изображения здесь](https://i.sstatic.net/7mt1I.jpg)