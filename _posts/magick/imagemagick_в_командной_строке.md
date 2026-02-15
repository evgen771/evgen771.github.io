---
title: "ImageMagick в командной строке"
date: "2025-07-01"
categories: [imagemagick]
page-layout: full
title-block-banner: false
toc: true
image: "imagemagick_2.jpg"
---

### Выяснение формата и свойств

Определить (вывести) формат и основные свойства (разрешение, цветовое пространство) файла file.jpg:
```
$ identify  file.jpg
```
---

То же, но включая метаданные EXIF и подобную информацию:
```
$ identify -verbose  file.jpg
```
---

### Просмотр

---

Вывести изображение file.jpg на текущий дисплей:
```
$ display  file.jpg
```
---

Воспроизвести видеофрагмент, составленный из кадров, хранящихся в файлах file1.jpg и file2.jpg:
```
$ animate  file1.jpg file2.jpg
```
---

### Простейшие преобразования

---

Привести изображение input.jpg к формату PNG:
```
$ convert  input.jpg output.png
```
---

… То же, но подавив определение выходного формата по суффиксу имени файла:
```
$ convert  input.jpg png:output.any
```
---

… Требуя, кроме того, формат TIFF для входного файла (подавляя автоопределение):
```
$ convert  tiff:input.any png:output.any
```
---

Добавить подпись label к изображению:
```
$ montage -geometry +0+0 -label "label"  in.jpg out.jpg
```
---

… Шрифтом Courier кегля 20 пунктов:
```
$ montage -geometry +0+0 -font Courier -pointsize 20 -label "label"  in.jpg out.jpg
```
---

… Цветом navy; поверх изображения, в точке 16, 24:
```
$ convert -font Courier -pointsize 20 -fill navy -annotate +16+24 "label"  in.jpg out.jpg
```
---

… С окантовкой цвета white:
```
$ convert  -font Courier -pointsize 20  -stroke white -strokewidth 2 -annotate +16+24 "label"  -stroke none -fill navy -annotate +16+24 "label"  in.jpg out.jpg
```
---

Извлечение фрагмента размера 320×240 пикселей из левого верхнего угла изображения:
```
$ convert -crop 320x240  in.jpg out.jpg
```
---

… Сбрасывая информацию об исходном расположении фрагмента в изображении (в частности для GIF):
```
$ convert -crop 320x240 +repage  in.jpg out.jpg
```
---

… Из центра:
```
$ convert -gravity Center -crop 320x240+0+0  in.jpg out.jpg
```
Возможны по меньшей мере следующие значения для опции -gravity (команда $ convert -list gravity вернет полный список)

NorthWest (по-умолчанию)NorthNorth EastWestCenter EastSouth WestSouth SouthEast

---

Масштабирование изображения до размера, умещающегося в прямоугольник 320×240 пикселей:[4]
```
$ convert -resize 320x240  in.jpg out.jpg
```
---

… Подавляя масштабирование в случае, если исходное изображение уже умещается в заданный прямоугольник:
```
$ convert -resize "320x240>"  in.jpg out.jpg
```
---

… Требуя масштабирования в точности до указанного размера — даже если это ведет к изменению отношения сторон:
```
$ convert -resize 320x240!  in.jpg out.jpg
```
---

### Объединение изображений

---

Создать анимированный GIF out.gif из трех кадров — in1, in2, in3, с паузой 0.75 с между ними:[5]
```
$ convert -delay 75  in1 in2 in3 out.gif
```
---

Объединить изображения in1, in2, in3 в вертикальный ряд:
```
$ convert -append  in1 in2 in3 out.jpg
```
---

… В горизонтальный ряд:
```
$ convert +append  in1 in2 in3 out.jpg
```
---

Создать мозаику 2 × 2 из изображений in1, in2 (первая строка), in3, in4 (вторая):[6]
```
$ montage -tile 2x2  in1 in2 in3 in4 out.jpg
```
---

… Предварительно приведя изображения к заданному размеру (-resize) — если он превышен. Размер «ячеек» мозаики будет подобран сообразно результирующим размерам изображений (-geometry 100%).
```
$ montage -resize "192x144>" -tile 2x2 -geometry 100%  in1 in2 in3 in4 out.jpg
```
---

… Добавив, кроме того, подпись (-label), состоящую из имени файла без ведущих директорий и суффикса (%t):[7]
```
$ montage -resize "192x144>" -tile 2x2 -geometry 100% -label %t  in1 in2 in3 in4 out.jpg
```
---

