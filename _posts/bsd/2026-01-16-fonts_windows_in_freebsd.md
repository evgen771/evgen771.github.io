---
layout: post
title:  Как установить шрифты Windows в FreeBSD
categories: BSD
---

В FreeBSD шрифты из Windows можно использовать, но их нужно **скопировать и зарегистрировать** в системе. Ниже - самый простой и рабочий способ.

---

#### Скопировать шрифты из Windows

В Windows шрифты обычно лежат здесь:

```
C:\Windows\Fonts
```

Нужные файлы:

* `.ttf` (TrueType)
* `.otf` (OpenType)
* иногда `.ttc`

Скопируй их, например, по сети, с флешки или из dual-boot раздела.

---

#### Куда класть шрифты в FreeBSD

**Вариант A - для всей системы (рекомендуется)**

```
/usr/local/share/fonts/windows/
```

Создаём каталог и копируем шрифты:

```sh
sudo mkdir -p /usr/local/share/fonts/windows
sudo cp *.ttf *.otf /usr/local/share/fonts/windows/
```

Права:

```sh
sudo chmod 644 /usr/local/share/fonts/windows/*
```

---

**Вариант B - только для одного пользователя**

```
~/.local/share/fonts/
```

```sh
mkdir -p ~/.local/share/fonts
cp *.ttf *.otf ~/.local/share/fonts/
```

---

#### Обновить кэш шрифтов (ОБЯЗАТЕЛЬНО)

В FreeBSD используется **fontconfig**.

Если он не установлен:

```sh
sudo pkg install fontconfig
```

Обновляем кэш:

```sh
fc-cache -fv
```

---

#### Проверка, что шрифты видны

Например, проверим Arial:

```sh
fc-list | grep -i arial
```

Если вывод есть - шрифт установлен

---
#### Использование в приложениях

После этого шрифты будут доступны в:

* X11
* KDE / GNOME / XFCE
* LibreOffice
* Firefox / Chromium
* Wine

Перезапуск приложений может понадобиться.

---

***Важные замечания***

##### Лицензия

Шрифты Windows (Arial, Times New Roman, Calibri и т.д.) **проприетарные**. 

Использовать их можно, если:

* у тебя есть лицензированная копия Windows
* ты используешь их лично, а не распространяешь

---

#### Альтернатива (если именно Windows-шрифты)

***Свободные аналоги:***

```sh
sudo pkg install liberation-fonts-ttf dejavu noto
```

* Arial → **Liberation Sans**
* Times New Roman → **Liberation Serif**
* Calibri → **Carlito**

---

