---
layout: post
title: "FFmpeg на Windows"
categories: FFmpeg
---

Установить `FFmpeg` на `Windows` можно, но исполняемые файлы программы не требуют установки — их нужно добавить в системный путь, чтобы получить доступ из командной строки.


[Скачивание FFmpeg](https://routehub.ru/guides/services/ustanovka-ffmpeg-na-windows#shag-1-skachivanie-ffmpeg)

Перейдите на официальный сайт сборок FFmpeg:  
[https://www.gyan.dev/ffmpeg/builds/](https://www.gyan.dev/ffmpeg/builds/)

В разделе `release builds` скачайте:

[`ffmpeg-release-full.7z`](https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-full.7z) — полная сборка с максимальной поддержкой кодеков

> **Примечание:** Сборка `essentials` подходит для базовых задач, но `full` лучше для совместимости и работы с Whisper.

или скачать с сайта FFmpeg:

[ffmpeg.org/download.html](https://ffmpeg.org/download.html)

---

[Распаковка архива](https://routehub.ru/guides/services/ustanovka-ffmpeg-na-windows#shag-2-raspakovka-arhiva)

1. Установите [7-Zip](https://www.7-zip.org/) если он не установлен.
2. Распакуйте архив `ffmpeg-release-full.7z` в удобное место, например:

`C:\Tools\ffmpeg`
    
3. Внутри будет структура:
    
`C:\Tools\ffmpeg\ffmpeg-<версия>\bin\ffmpeg.exe`


[Добавление в системный PATH](https://routehub.ru/guides/services/ustanovka-ffmpeg-na-windows#shag-3-dobavlenie-v-siste)

Чтобы использовать `ffmpeg` из любой папки, нужно добавить его в переменную среды:

1. Откройте "Панель управления" → "Система" → "Дополнительные параметры системы"
2. Нажмите кнопку **"Переменные среды"**
3. В разделе **"Системные переменные"** найдите строку `Path` → нажмите **"Изменить"**
4. Нажмите **"Создать"** и добавьте путь до папки `bin`, например:
    
`C:\Tools\ffmpeg\ffmpeg-7.1.1-full_build\bin`
    
5. Сохраните изменения, нажав `ОК` во всех окнах

[Проверка установки](https://routehub.ru/guides/services/ustanovka-ffmpeg-na-windows#shag-4-proverka-ustanovki)

Откройте `новую` командную строку (`Win + R → cmd`) и введите:

Копировать`ffmpeg -version`

Если всё установлено правильно, вы увидите информацию о версии `FFmpeg`, лицензии и поддерживаемых кодеках.

Взято с: [Установка FFmpeg | RouteHub](https://routehub.ru/guides/services/ustanovka-ffmpeg-na-windows)
