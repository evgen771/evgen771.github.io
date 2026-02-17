**Собирать при помощи LuaTeX, с подключенным Российским шрифтом PT Astra Serif**

*LuaTeX — это движок компиляции (а не отдельный язык), преамбула сохраняет стандартный LaTeX‑синтаксис*

```latex
\documentclass[russian,12pt,a4paper]{article}
\usepackage{fontspec}                  % обязательно включить.Пакет для XeLaTeX and LuaLaTeX
% \setmainfont{PT Astra Serif Italic}  %установить шрифт или ниже
\setmainfont{"pt-astra-serif_regular"} % сам шрифт
% \usepackage[utf8]{inputenc}          % кодовая страница документа
% \usepackage[T2A]{fontenc}            % внутренняя кодировка  TeX 
% \usepackage{babel}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage[a4paper, top=10mm, left=10mm, right=10mm, bottom=25mm]{geometry}
\setlength{\parindent}{0pt}  % убрать отступы в строках во всем тексте
\begin{document}
       Если вы хотите открыть виртуальную машину VirtualBox на весь экран, то сначала вам необходимо установить 
\end{document}
```

```latex
\documentclass[russian,12pt,a4paper]{article}
\usepackage{fontspec}
\setmainfont{"pt-astra-serif_regular"}

% \usepackage[utf8]{inputenc}
% \usepackage[T2A]{fontenc}
% \usepackage{babel}
\usepackage[a4paper, top=5mm, left=10mm, right=10mm, bottom=10mm]{geometry}

\begin{document}
	Если вы хотите открыть виртуальную машину VirtualBox на весь экран, то сначала вам необходимо 
\end{document}
```

