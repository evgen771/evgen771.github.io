---
layout: post
title:   Beamer. Преамбула. Пример документа.
category: Beamer
---

### Тема `Madrid` с добавлением шрифтов `DejaVu`

```latex
\documentclass[pdf,9pt,aspectratio=43]{beamer}
\usepackage[utf8x]{inputenc}
\usepackage{DejaVuSans}
\usepackage{DejaVuSerif}
\usepackage{DejaVuSansMono}
\usepackage[T2A]{fontenc}
\usepackage[russian]{babel}
\usepackage{hyperref}
\hypersetup{unicode=true}

\usetheme{Madrid}
\usefonttheme[stillsansserifsmall]{serif}
\usefonttheme[onlylarge]{structureitalicserif}

\author[Иван Иванов]{}
\title[О себе...]{Моя презентация}

\begin{document}

\begin{frame}
		\titlepage % Первый слайд с заголовком
	\end{frame}
	
	\begin{frame}{Содержание презентации}
		\tableofcontents[hideallsubsections]
\end{frame}
	%\tableofcontents % Сюда будет вставлено оглавление
	%\newpage

\begin{frame}{Высказывания} 
	
	\begin{block}{Кто то}  
		........
	\end{block}  
	
	\begin{block}{Как то}  
		.......
	\end{block}   
	
	\begin{block}{Зачем то}  
		.......
	\end{block} 
	
\end{frame}

\end{document}    
```