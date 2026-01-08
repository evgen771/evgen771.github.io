---
layout: post
title: Запись образа с FreeBSD на USB_Flash
categories: BSD
---

[FreeBSD](https://www.freebsd.org/ru/)

[Handbook](https://docs.freebsd.org/ru/books/handbook/)

[Скачать образ для записи на USB-flash FreeBSD-15.0-RELEASE-amd64-memstick.img](https://download.freebsd.org/releases/amd64/amd64/ISO-IMAGES/15.0/)

[Скачать образ для записи в Виртуалке FreeBSD-15.0-RELEASE-amd64-disc1.iso](https://download.freebsd.org/releases/amd64/amd64/ISO-IMAGES/15.0/)

Образ в формате IMG можно записать на флешку или другой USB-накопитель с помощью специальных программ.

Выбор инструмента зависит от операционной системы.

#### Для Windows

- Win32 Disk Imager.

Бесплатная утилита с открытым исходным кодом, позволяет записывать файлы в формате IMG на USB-накопитель, SD-карту и другие носители.

    
#### Для Linux

- lsblk - узнать /dev/sd*

- sudo dd if=FreeBSD-15.0-RELEASE-amd64-memstick.img of=/dev/sd* bs=4M status=progress

#### Для (Free)BSD

- gpart show - узнать /dev/da*

- dd if=FreeBSD-15.0-RELEASE-amd64-memstick.img of=/dev/da* bs=1m status=progress


