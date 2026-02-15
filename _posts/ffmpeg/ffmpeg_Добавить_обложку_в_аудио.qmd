---
title: "Добавить обложку в аудио файл"
date: "2025-07-05"
categories: [ffmpeg]
page-layout: full
title-block-banner: false
toc: true
image: "ffmpeg-mp3-to-wav.jpeg"
---

*Изображение в формате JPG и аудиофайл в качестве входных данных. Создается видеофайл той же длины, что и аудиофайл (растянув неподвижное изображение на всю продолжительность)*

```
ffmpeg -loop 1 -i image.jpg -i audio.wav -c:v libx264 -c:a aac -strict experimental -b:a 192k -shortest output.mp4
``` 
или
```
ffmpeg -loop 1 -i image.jpg -i audio.wav -c:v libx264 -c:a aac -b:a 192k -shortest output.mp4
``` 
или
```
ffmpeg -loop 1 -y -i lmage.jpg -i audio.wav -shortest output.mp4
```
Просто измените кодеки (-c:v указывает видеокодеки, -c:a указывает аудиокодеки) и имена ваших файлов. 

Узнать кодеки можно командой:
```
- ffmpeg -i file_name.mp4
- ffmpeg -i file_name.mp3
```
Также вам не нужно использовать -strict experimental, если вы используете более новую версию (4.x).
