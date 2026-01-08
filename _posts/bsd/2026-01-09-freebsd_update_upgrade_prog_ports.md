---
layout: post
title: Мажорные и минорные обновления
categories: BSD
---


#### Мажорные обновления увеличивают номер старшей версии. 

Пример:

`FreeBSD 14.4 до 15.0`

#### Обновления с изменением младшей версии FreeBSD называются минорными обновлениями.

Пример:

`FreeBSD 14.3 до 14.4`

```sh
sudo freebsd-update fetch
sudo freebsd-update install
sudo freebsd-update -r 14.4-RELEASE upgrade
sudo freebsd-update install
sudo reboot
sudo freebsd-update install
```

*Оба типа обновления могут быть выполнены путем указания freebsd-update целевой версии выпуска*

#### Принудительное обновление всех пакетов

Принудительное обновление всех установленных пакетов заменит пакеты на новые версии из репозитория, даже если номер версии не увеличился.

`sudo pkg-static upgrade -f`

#### Если порты установлены, удалить

`sudo rm rf /usr/ports/` 

#### Загрузить порты

`$ git clone https://git.freebsd.org/ports.git /usr/ports`
