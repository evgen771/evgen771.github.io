---
layout: post
title: "Конвертировать медиа файлы между форматами"
categories: FFmpeg
---

#### Конвертировать

```
ffmpeg -i video_input.mp4 video_output.avi
ffmpeg -i video_input.webm video_output.flv
ffmpeg -i audio_input.mp3 audio_output.ogg
ffmpeg -i audio_input.wav audio_output.flac
```

#### Вы даже можете указать больше выходных файлов:

```
ffmpeg -i audio_input.wav audio_output_1.mp3 audio_output_2.ogg
```

*Это преобразует входные файлы во все указанные форматы*.

#### Чтобы увидеть список всех поддерживаемых форматов, используйте:

```
ffmpeg -formats
```

*Опять же, вы можете добавить -hide_banner, чтобы опустить информацию о приложении*.

#### Вы можете указать параметр -qscale 0 перед выходным файлом, чтобы сохранить качество видеофайла:

```
ffmpeg -i video_input.wav -qscale 0 video_output.mp4
```

#### Кроме того, вы можете указать кодеки, которые вы хотите использовать, добавив -c:a (для аудио) и -c:v (для видео) с последующим названием кодеков, или скопировать, если хотите использовать те же кодеки, что и оригинальный файл:

```
ffmpeg -i video_input.mp4 -c:v copy -c:a libvorbis video_output.avi
```
