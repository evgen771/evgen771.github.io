---
layout: post
title: ImageMagick. Convert image + автоматизация процесса"
categories: Magick
---

Конвертировать изображения в `PDF`, `PDF` в изображения любого формата, соединение `PDF`-файлов.

#### convert
`
Конвертировать изображение в pdf:

```bash
convert *.jpg file.pdf
```

#### Объединить Несколько PDF в один:

```bash
convert FILE1.pdf FILE2.pdf OUTPUT.pdf
```

#### Конвертировать изображения в PDF

```bash
convert /path/to/image /path/to/pdf
convert /home/ubuntu/flower.jpg to /home/files/flowers.pdf
```
#### В директории с изображениями:

```bash
convert test.jpg test.pdf
convert *.jpg test.pdf
```
#### mogrify

Используйте команду `mogrify` с параметром `-format` для преобразования нескольких фотографий. 

Все файлы `JPG` в каталоге `/home/ubuntu` будут преобразованы в файлы `PDF` с помощью этой команды:

```bash
mogrify -format pdf /home/ubuntu/*.jpg

mogrify -format pdf -path /home/data /home/ubuntu/*.jpg
```

Вы можете использовать вышеупомянутую команду в сценарии оболочки для автоматизации преобразования `JPG` в `PDF`, как показано ниже. 

Создайте новый сценарий оболочки:

```bash
sudo vi jpg_to_pdf.sh
```
Сам скрипт:

```bash
#!/bin/sh
$ mogrify -format pdf /home/ubuntu/*.jpg
```

Затем документ можно сохранить и закрыть. 

Чтобы разрешить доступ, выполните следующее:

```bash
sudo chmod +x jpg_to_pdf.sh
./jpg_to_pdf.sh
```

Вы даже можете настроить `cron` для запуска вышеупомянутого скрипта в 10 утра каждый день:

Чтобы войти в `crontab`, просто выполните следующую команду:

```bash
$ crontab –e
0 10 * * * sudo ./jpg_to_pdf >/dev/null 2>&1
```
Сохраните и закройте файл.
