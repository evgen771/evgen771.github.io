---
layout: post
title: lsblk.FreeBSD
categories: Программы
---

Команда которая отображает информацию о блочных устройствах Linux(lsblk), FreeBSD(gpart)

#### Linux - lsblk

Если вы хотите установить его в свою систему, просто введите команду, приведенную ниже (от root):

```sh
# fetch -o /usr/local/bin/lsblk https://raw.githubusercontent.com/vermaden/scripts/master/lsblk.sh
# chmod +x /usr/local/bin/lsblk
# hash -r || rehash
# lsblk
```
#### FreeBSD - gpart

`gpart show`

#### Более информативно:

`$ geom disk lict`
