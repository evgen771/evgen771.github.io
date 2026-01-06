---
layout: post
title: Удаление, создание, подключение файловой системы на USB-устройстве
categories: podcast
---

#### Имена дисковых устройств(основные)

>Жесткие диски(IDE PATA и SATA) - ad, ada
>
> USB-устройства, флешки - da

#### Определить имя устройства, которое мы только что добавили:

`geom disk list` можно сразу `gpart show`

#### Определился например как:

`/dev/da1`

#### Посмотрим ранее кем-то созданную таблицу партиций:

`gpart show da1`

#### Удалим ее и создадим новую:

```sh
gpart destroy -F da1
gpart create -s gpt /dev/da1
```
#### Создадим ufs раздел:

```
gpart show da1
gpart add -t freebsd-ufs /dev/da1
```
#### Теперь создадим файловую систему UFSv2 на разделе:

```sh
gpart show da1
newfs -U /dev/da1p1
gpart show da1
```
где:

- -U - включение режима "Soft Updates"

>Режим «Soft Updates» в FreeBSD — это опция, которая оптимизирует работу файловой системы UFS, увеличивая >скорость создания и удаления файлов за счёт кэширования, а также делает систему более устойчивой к сбоям >(например, при пропадании питания)

Также можно добавить метку раздела, например: `date`

- -L data - установка метки раздела

#### Создаем директорию монтирования(root):

```sh
cd /media
mkdir data
```

#### Монтируем:

`mount /dev/da1p1 /media/data`

#### Размонтируем:

`umount /dev/da1p1`

#### Изменяются права доступа к диску:

`chmod -R 660 /media/data`

или

`chmod -R +rw /media/data`

#### Добавляем в автозагрузку:

- cat /etc/fstab

```sh
Device        Mountpoint      FStype  Options Dump    Pass#

***            ***              *       *       *       *

***            ***              *       *       *       *

/dev/da1p1     /media/data      ufs     rw      2       2
```
 
