---
layout: post
title: "FFmpeg. Извлечение аудио из видео(один файл)"
categories: FFmpeg
---


```
ffmpeg -i INPUT.mp4 -vn -c:a libmp3lame -ab 64k OUTPUT.mp3
```

#### Все "по-полочкам":

```bash
-i  INPUT.mp4 - входной файл(input)
OUTPUT.mp3 - выходной файл(output)
-vn - видео нет(без видео)
-c:a libmp3lame - кодек аудио
-ab 64k - битрейт(качество звука можно менять)
```




