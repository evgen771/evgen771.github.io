---
layout: post
title: FFmpeg. Извлечение аудио из видео
categories: FFmpeg
---

`ffmpeg -i MYINPUT.mp4 -vn -c:a libmp3lame -ab 64k MYOUTPUT.mp3`

*Извлекает звук из указанного видео файла*

- -i  MYINPUT.mp4 - инпут - входной файл
- -vn - видео нет
- - -c:a libmp3lame - кодек аудио
- -ab 64k - битрейт
- MYOUTPUT.mp3 - выходной файл

---

Скопировать все и вставить в терминал.

*Извлекает звук из всех видеофайлов в директории где запущен скрипт*

```bash
mkdir cash
for f in *.avi *MOV *.mkv *.mp4 *.mpg ;
do
ffmpeg -i “\$f” -vn -ar 44100 -ac 2 -ab 128k -f mp3 cash/”\${f%.*}”.mp3
done
```
Запустить.

---