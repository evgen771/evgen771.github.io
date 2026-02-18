

[wiki/LaTeX](https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings)

Код HTML можно вставить в документ LaTeX, но напрямую встроить его нельзя. 

LaTeX фокусируется на вёрстке документов, а HTML — на структурировании веб-контента. 

Для правильного отображения HTML-кода в LaTeX используются специальные методы, которые могут включать использование пакета `listings`, пакета `minted` или утилиты `wkhtmltopdf`. 

#### С помощью пакета listings

Пакет `listings` позволяет вставлять HTML-код с подсветкой синтаксиса и настраиваемым форматированием. Чтобы использовать пакет, нужно:

Включить пакет в преамбуле документа: 

```latex
\usepackage{listings}.
```

#### Использовать окружение `lstlisting` для отображения HTML-кода. 

Опция `language=HTML` позволяет подсвечивать синтаксис, специфичный для HTML. 

Можно настроить внешний вид с помощью опций `basicstyle` и c`aption`.
 
#### С помощью пакета minted

Пакет minted предлагает более продвинутую подсветку синтаксиса, используя внешнюю библиотеку Pygments. 

Чтобы использовать пакет, нужно:

Установить `Pygments` и включить пакет в преамбуле LaTeX: 

```latex
\usepackage{minted}
```

Использовать окружение `minted` для отображения HTML-кода. Этот подход позволяет подсвечивать код, но требует внешней зависимости.

#### С помощью утилиты wkhtmltopdf

Утилита `wkhtmltopdf` преобразует HTML в PDF, а затем включает сгенерированный PDF-файл в документ LaTeX. 

Этот метод позволяет включать HTML-страницы, сохраняя оригинальные стили, цвета и ссылки, а также, если нужно, — внутренние ссылки из HTML. 

Однако LaTeX не может напрямую встраивать интерактивные элементы HTML — LaTeX генерирует статические документы. 

---

Нужно включить в преамбулу латексного документа и определить `\usepackge{listings}`.

Полный пример показан ниже:

```latex
\usepackage{listings}

% In preamble
\usepackage{listings}

% In body
\begin{document}
\begin{lstlisting}
Put your code here.
\end{lstlisting}
\end{document}
```

#### Существует три способа включения исходного кода в файл tex.

Вставляем исходный код в строку:

```latex
\lstinline{<code here>}
```

Написание кода на языке программирования в окружении, как показано выше. 

`listing`

Ввод исходного кода непосредственно из самого файла с помощью следующей команды. Это очень полезно, если вы создали программу на нескольких файлах и все еще редактируете ее. Таким образом, если вы измените исходный код, 
вам просто нужно будет перекомпилировать код LaTeX, и ваш документ будет обновлен.

```latex
\lstinputlisting{source_filename.py}
```

**Для ясности мы включили три приведенных выше примера в один код**.


```latex
\lstset{language=C}     % default language selection
\begin{document}

% usage type 1
The code can be inserted inline, e.g.  emphasizing on keywords 
\lstinline{while, for} in this manner.

% usage type 2
\begin{lstlisting}
This code is placed in listing environement.
\end{lstlisting}

% usage type 3

\lstinputlisting{source_filename.py}
\end{document}
```

Как показано в приведенном выше примере, вы можете включить любой файл, указав его полное имя. Он будет считаться обычным текстом и будет выделен в соответствии с вашим языком по умолчанию. В приведенном выше примере команда используется для определения языка по умолчанию как C. Вы также можете определить язык во время вставки кода, как показано в примере ниже (language=python). Вы также можете указать строки, которые должны быть включены из файла. 

Рассмотрим следующий пример.

`\lstset{}`

```latex
\lstinputlisting[language=Python,firstline=37,lastline=45]{source_filename.py}  
\lstinputlisting[language=Python, linerange={37-45,48-50}]{source_filename.py}
```

Это пригодится, если вы уверены, что файл не изменится (по крайней мере, до указанных строк). Вы также можете опустить параметр firstline или lastline: он означает все, что до или начиная с этого пункта.

**Вот простой пример для некоторого кода на языке Pascal**:

```latex
\documentclass{article}
\usepackage{listings}             % Include the listings-package

\begin{document}
\lstset{language=Pascal}          % Set your language (you can change the language for each code-block optionally)

\begin{lstlisting}[frame=single]  % Start your code-block
for i:=maxint to 0 do
begin
{ do nothing }
end;
Write('Case insensitive ');
Write('Pascal keywords.');
\end{lstlisting}

\end{document}
```