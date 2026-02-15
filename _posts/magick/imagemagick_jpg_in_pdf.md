---
title: "ImageMagick.Convert image to PDF.PDF to image."
date: "2025-07-01"
categories: [imagemagick]
page-layout: full
title-block-banner: false
toc: true
image: "imagemagick_1.jpg"
---

Конвертировать изображения в PDF, PDF в изображения любого формата, соединение PDF-файлов.

### convert
Конвертировать изображение в pdf:
```
convert *.jpg file.pdf
```
Объединить Несколько PDF в один:
```
convert FILE1.pdf FILE2.pdf OUTPUT.pdf
```
Шаг 1. Щелкните правой кнопкой мыши на рабочем столе и выберите параметр "Открыть терминал здесь".

Шаг 2. Чтобы конвертировать фотографии в PDF, просто используйте команду конвертировать:
```
convert /path/to/image /path/to/pdf
convert /home/ubuntu/flower.jpg to /home/files/flowers.pdf
В директории с изображениями:
convert test.jpg test.pdf
convert *.jpg test.pdf
```
### mogrify

Шаг 3. Используйте команду mogrify с параметром -format для преобразования нескольких фотографий. Все файлы JPG в каталоге /home/ubuntu будут преобразованы в файлы PDF с помощью этой команды:
```
mogrify -format pdf /home/ubuntu/*.jpg

mogrify -format pdf -path /home/data /home/ubuntu/*.jpg
```
Шаг 4. Вы можете использовать вышеупомянутую команду в сценарии оболочки для автоматизации преобразования JPG в PDF, как показано ниже. Создайте новый сценарий оболочки:
```
sudo vi jpg_to_pdf.sh
```
```
#!/bin/sh

$ mogrify -format pdf /home/ubuntu/*.jpg
```
Шаг 5. Затем документ можно сохранить и закрыть. Чтобы разрешить доступ, используйте следующую формулу:
```
sudo chmod +x jpg_to_pdf.sh
./jpg_to_pdf.sh
```
Шаг 6. Вы даже можете настроить cron для запуска вышеупомянутого скрипта в 10 утра каждый день. 

Чтобы войти в crontab, просто выполните следующую команду.
```
$ crontab –e
0 10 * * * sudo ./jpg_to_pdf >/dev/null 2>&1
```
Шаг 7. Сохраните и закройте файл.
