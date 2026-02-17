---
layout: post
title: LaTeX. LuaTeX — это движок компиляции. Преамбула.
categories: LaTeX
---

Преамбула в **LuaTeX** — это блок кода *перед* командой `\begin{document}`, где задаются ключевые настройки документа: класс, пакеты, шрифты, метаданные и пользовательские макросы.


Хотя LuaTeX — это движок компиляции (а не отдельный язык), преамбула сохраняет стандартный LaTeX‑синтаксис, но открывает **дополнительные возможности** за счёт:
- прямой поддержки Unicode и современных шрифтов (OpenType/TrueType);
- интеграции с языком Lua для тонкой настройки вёрстки;
- улучшенной типографики (лигатуры, кернинг, оптические размеры).


### Ключевые элементы преамбулы в LuaTeX


1. **Объявление класса документа**  
   ```latex
   \documentclass[12pt,a4paper]{article}
   ```
   - `article`, `book`, `report` — базовые классы;
   - опции в квадратных скобках задают размер шрифта, формат бумаги и др.


2. **Подключение пакетов для LuaTeX**  
   ```latex
   \usepackage{fontspec}          % работа с системными шрифтами
   \usepackage{polyglossia}       % многоязычная поддержка
   \usepackage{luacode}          % вставка Lua‑скриптов
   ```
   - `fontspec` — основной пакет для подключения шрифтов (заменяет `inputenc` и `fontenc`);
   - `polyglossia` — альтернатива `babel` для многоязычных документов;
   - `luacode` — для встраивания Lua‑кода.

3. **Настройка шрифтов**  
   ```latex
   \setmainfont{Libertinus Serif}     % основной шрифт
   \setsansfont{Libertinus Sans}      % шрифт без засечек
   \setmonofont{Consolas}             % моноширинный шрифт
   ```
   - указываются имена шрифтов, установленных в системе;
   - доступны параметры: `Ligatures`, `Renderer`, `SizeFeatures` и др.

4. **Языковые настройки**  
   ```latex
   \setdefaultlanguage[babelshorthands=true]{russian}
   \setotherlanguage{english}
   ```
   - `polyglossia` автоматически настраивает переносы, кавычки и тире для выбранного языка.

5. **Математические пакеты**  
   ```latex
   \usepackage{amsmath}
   \usepackage{unicode-math}     % поддержка математических символов Unicode
   \setmathfont{Libertinus Math}
   ```
   - `unicode-math` позволяет использовать математические символы напрямую (например, ∬, ∑, √).

6. **Параметры страницы**  
   ```latex
   \usepackage[margin=2.5cm]{geometry}
   \pagestyle{plain}
   ```
   - `geometry` — гибкая настройка полей;
   - `pagestyle` — стиль колонтитулов.

7. **Метаданные документа**  
   ```latex
   \title{Исследование функций}
   \author{Иванов И.И.}
   \date{\today}
   ```
   - будут использованы при вызове `\maketitle`.

8. **Пользовательские команды**  
   ```latex
   \newcommand{\R}{\mathbb{R}}       % множество действительных чисел
   \newcommand{\limn}{\lim_{n\to\infty}}
   ```
   - упрощают ввод повторяющихся конструкций.

9. **Lua‑скрипты (опционально)**  
   ```latex
   \begin{luacode*}
       tex.print("Текст из Lua")
   \end{luacode*}
   ```
   - позволяют автоматизировать сложные операции (например, генерацию таблиц).

### Важные отличия от PDFLaTeX

- **Нет необходимости в `inputenc` и `fontenc`**: LuaTeX изначально поддерживает Unicode.
- **Шрифты подключаются через `fontspec`**: можно использовать любые системные шрифты без конвертации.
- **Улучшенная поддержка языков**: `polyglossia` лучше работает с нелатинскими алфавитами.
- **Интеграция с Lua**: возможность программировать вёрстку на уровне движка.


### Пример преамбулы для LuaTeX

```latex
\documentclass[12pt,a4paper]{article}
\usepackage{fontspec}
\usepackage{polyglossia}
\usepackage{amsmath}
\usepackage{unicode-math}
\usepackage[margin=2.5cm]{geometry}

% Шрифты
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}
\setmathfont{STIX Two Math}

% Языки
\setdefaultlanguage{russian}
\setotherlanguage{english}

% Метаданные
\title{Научный отчёт}
\author{Петров А.С.}
\date{\today}

% Пользовательские команды
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
```

### Рекомендации по использованию

1. **Порядок пакетов**: подключайте `fontspec` и `polyglossia` *до* других пакетов, зависящих от шрифтов.
2. **Проверка шрифтов**: убедитесь, что указанные шрифты установлены в системе.
3. **Кодировка файла**: сохраняйте `.tex`-файл в UTF‑8.
4. **Компиляция**: используйте `lualatex` (не `pdflatex`).
5. **Отладка**: при ошибках проверяйте совместимость пакетов с LuaTeX (некоторые старые пакеты могут не работать).
