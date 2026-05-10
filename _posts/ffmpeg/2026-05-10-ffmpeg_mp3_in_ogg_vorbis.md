---
layout: post
title:  FFmpeg. Конвертировать mp3 в ogg_vorbis.
category: FFmpeg
---

### Один *.mp3 файл.

```bash
ffmpeg -i input.mp3 -c:a libvorbis -q:a 4 output.ogg
```

### Целый каталог с MP3-файлами:

```bash
for f in ./*.mp3; do ffmpeg -i "$f" -c:a libvorbis -q:a 4 "${f/%mp3/ogg}"; done
```

### Рекурсивно:

```bash
find . -type f -name '*.mp3' -exec bash -c 'ffmpeg -i "$0" -c:a libvorbis -q:a 4 "${0/%mp3/ogg}"' '{}' \;
```

*Установите качество вывода, отрегулировав значение `-q:a`: для этого кодека диапазон составляет `0-10`, и чем выше значение, тем лучше качество*

*В старых версиях ffmpeg, вам может понадобиться использовать `-acodec` и `-aq` вместо `-c:a` и -`q:a`*

