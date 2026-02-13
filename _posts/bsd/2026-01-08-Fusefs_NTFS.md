---
layout: post
title: Поддержка NTFS, exFAT
categories: BSD
---


fusefs в FreeBSD — это драйвер, который реализует файловую систему.

После FreeBSD 13.0 модуль ядра FUSE был переименован из fuse в fusefs.

Если поддержка FAT есть в FreeBSD изначально, то для NTFS надо доустанавливать, как и для exFAT

#### Через менеджер пакетов - install fusefs-ntfs 
```
# pkg install fusefs-ntfs
```
#### После установки нужно загрузить модуль ядра FUSE для текущего сеанса: 
```
# kldload fusefs
```
#### Автоматически загружалась при запуске системы:
```
# ee /etc/rc.conf 
fusefs_enable="YES"
fusefs_safe="YES"
fusefs_safe_evil="YES"
Esc --> a --> a
or
sysrc fusefs_enable="YES"
sysrc fusefs_safe="YES"
sysrc fusefs_safe_evil="YES"
```
#### Из портов

Для сборки из портов нужно перейти в каталог:
```
# cd /usr/ports/sysutils/fusefs-ntfs 
```
и выполнить команду: 
```
# make install clean
```

#### Файловая система exFAT

exFAT (Extended File Allocation Table) — это облегченная файловая система, оптимизированная для флэш-накопителей, таких как USB-накопители и SD-карты.

```sh
# pkg install exfat
# kldload fusefs
# sysrc kld_list+=fusefs
```



