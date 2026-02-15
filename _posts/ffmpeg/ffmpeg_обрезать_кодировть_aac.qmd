---
title: "Нарезка кадров"
date: "2025-06-21"
categories: [ffmpeg]
page-layout: full
title-block-banner: false
toc: true
image: "ffmpeg_3.jpg"
---

Нарезка видео с помощью FFmpeg

### обрезать с ...+ кодер aac
```
ffmpeg -i ts.mp4 -ss 00:00:20 -c:a aac -b:v 15000k -b:a 320k output.mp4
```
Входной файл - ts.mp4

Время начала - -ss (ЧЧ:ММ:СС)

Аудио кодек (aac) -  -c:a aac

Битрейт видео  -  -b:v 15000k

Битрейт аудио -b:a 320k

Выходной файл - output.mp4

Мы указали, что хотели бы, чтобы остальное было сохранено (начиная с  00:00:20) + кодек

