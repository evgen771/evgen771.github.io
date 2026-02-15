---
layout: post
title: "Простая конвертация видео файлов с помощью FFmpeg"
categories: FFmpeg
---

Конвертируйте видео файлы в вашей системе Linux с помощью FFmpeg

#### Откройте Терминал

Введите: 

```
ffmpeg -i
```

#### Введите имя файла **MKV** с указанием пути к файлу, например:

```
/home/user/Desktop/sample.mkv
```

#### Введите имя выходного файла **MP4** с указанием пути к файлу назначения, например:

```
/home/user/Desktop/sample.mp4
```

#### Вся команда в этом примере выглядит так:

```
ffmpeg -i /home/user/Desktop/sample.mkv /home/user/Desktop/sample.mp4
or
ffmpeg -i sample.mkv sample.mp4 
```

#### Нажмите клавишу «Enter», чтобы начать кодирование видео.

*Новый файл **MP4** появится в папке с исходным файлом после завершения кодирования*.

#### Еще пример конвертировать видео без каких-либо ограничений:

```
ffmpeg -i video_original.avi video_finale.mp4
```


