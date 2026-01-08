---
layout: post
title: Установка необходимых шрифтов(FreeBSD)
categories: podcast
---


#### Проверка — локаль системы

В терминале:

`locale`


Часто так на FreeBSD:

```sh
LANG=C
LC_ALL=C
```

Должно быть UTF-8, например:

```sh
LANG=ru_RU.UTF-8
LC_ALL=
```

#### Как исправить (правильно)

Установить UTF-8 локаль:

```sh
sudo pkg install ru-freebsd-doc
sudo pkg install lang/ru_RU.UTF-8
```
Или проще:

`sudo localedef -i ru_RU -f UTF-8 ru_RU.UTF-8`

#### Прописать локаль

В ~/.profile или ~/.shrc:

```sh
export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8
reboot
```

#### Установить шрифты

```sh
sudo pkg install noto fontconfig dejavu
fc-cache -fv
```

#### Рекомендуется:

```sh
Noto Sans
DejaVu Sans
```
