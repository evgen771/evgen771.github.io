---
layout: post
title:  FFmpeg. Нарезка кадров
categories: FFmpeg
---

#### обрезать с ...+ кодер aac

`ffmpeg -i ts.mp4 -ss 00:00:20 -c:a aac -b:v 15000k -b:a 320k output1.mp4`

**Время начала** - `-ss (ЧЧ:ММ:СС)`

Мы указали чтобы видео было сохранено `начиная с  00:00:20` + `кодек`

