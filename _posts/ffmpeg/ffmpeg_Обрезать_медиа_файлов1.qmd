---
title: "Обрезать медиа файлы"
date: "2025-07-07"
categories: [ffmpeg]
page-layout: full
title-block-banner: false
toc: true
image: "crop.png"
---

Обрезать медиа файлы используя разные способы.

Чтобы обрезать файлы с самого начала, вы должны указать продолжительность, используя -t:

- ffmpeg -i input_video.mp4 -t 5 output_video.mp4

- ffmpeg -i input_audio.wav -t 00:00:05 output_audio.wav

Как видите, это работает как для видео, так и для аудио файлов.

Обе команды выше делают одно и то же: сохраняют первые 5 секунд входного файла в выходной файл.

Можно использовать различные способы ввода длительности, как видно в примере - одно число (количество секунд) и ЧЧ:ММ:СС (часы, минуты, секунды).

Вы можете пойти еще дальше, указав время начала с -ss и даже время окончания с -to:
```
ffmpeg -i input_audio.mp3 -ss 00:01:14 output_audio.mp3

ffmpeg -i ts.mp4 -ss 00:00:20 output.mp4

ffmpeg -i input_audio.wav -ss 00:00:30 -t 10 output_audio.wav

ffmpeg -i input_video.mp4 -ss 00:01:30 -to 00:01:40 output_video.mp4

ffmpeg -i input_audio.ogg -ss 5 output_audio.ogg
```
Вы можете тут видеть время начала -ss (ЧЧ:ММ:СС), длительность -t в секундах, время окончания -to (ЧЧ:ММ:СС) и время начала -ss (начать после указанного времени в секундах).
