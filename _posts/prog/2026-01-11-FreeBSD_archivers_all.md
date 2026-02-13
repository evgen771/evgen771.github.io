---
layout: post
title:  Архиваторы в системе FreeBSD. Примеры использования
category: Программы
---

### Zip

#### Установим архиватор zip

`cd /usr/ports/archivers/zip && make install clean`

#### Архивируем в зип архив

`zip -r -9 /var/ark.zip /mnt/bac/sql/* /usr/local/etc/* /usr/local/www/* -x "/mnt/bac/sql_dom/*"`

#### Подробнее о ключах

- r рекурсивно применить архивацию

- 9 Это максимальная степень сжатия архива

#### Расположение и названия архива

дальше идет перечисления директорий которые нужно архивировать

- x это исключения, то-есть исключить из архивирование директорию sql_dom

#### Распаковка zip архива

`unzip ark.zip -d /root/`

d распаковка в указанную директорию.
Или если нужно индивидуально вытащить файл или директорию.

`unzip ark.zip /mnt/bac/sql/sql_job_sites.sql -d /root/`

### Архиватор 7z.

`cd /usr/ports/archivers/p7zip/ && make install clean`

### Проприетарный архиватор rar.

`cd /usr/ports/archivers/rar && make install clean`

#### Создания архива.

Архивируем директорию 1111.

`rar a test.rar 1111/`

- ключ `а` создать архив.

#### Распаковка rar.

`rar e test.rar`

Распакуется в эту же директорию где лежит архив.

`unrar e file.rar`

#### Просмотр.

`unrar l file.rar`

### tar

#### Создание архива

`tar -cf txt.tar /path/1`

#### Добавления файлов в tar-архив.

`tar -rf txt.tar /path/1`

#### Создания gz-архива.

`tar -zcvf file.tar.gz /path/1`

#### Создания bz2.

`tar -jcvf file.tar.bz2 /path/1`

#### Распаковка tar-архива.

`tar xvf file.tar.gz`

#### Создания xz-архива.

tar -zpvf file.txz /path/1

#### Распаковка xz-архива.

`tar xJvf ports.txz -C /usr/ports`

#### Распаковка определенной директории в архива.

Для начало посмотрим как эта директория располагается в архиве.

`tar -tvf www.tar | grep www.local`

или

`tar -tvf www.tar > /tmp/list_ark.txt`

#### Определились с директорией, распаковываем.

`tar xvf www_back_all.tar -C /usr/local/www/test/ usr/local/www/local`

- /usr/local/www/test/ — куда распаковываем.

- usr/local/www/local — какую именно директорию нам нужно распаковать из архива.
