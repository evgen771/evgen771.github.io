---
layout: post
title: ImageMagick. Необходимое.
categories: Magick
---

### ImageMagick 

`mogrify и convert` - утилиты входящие в состав `imagemagick`. Они используются для применения преобразований к файлам изображений. Они понимают одинаковые ключи. 

Команда `convert` требует указания выходного файла, а `mogrify` производит операции над самим файлом. 

```
mogrify - произвести действия над самим изображением 

convert - произвести действия над изображением и сохранить в другой файл 

display - вывести изображение на экран 

animate - вывести анимированное изображение на экран 
```

#### Получение информации об изображении

- magick identify shadow.png

#### Получите подробную информацию об этом же изображении:

- magick identify -verbose shadow.png

---

#### general

- convert -strip -quality 80 kofe.jpg -resize 640x340! output.jpg

- convert kofe.png -strip -quality 80 -resize 640x340! output.jpg

---

#### Изменение размера изображения до 100×100 пикселей с сохранением пропорций

Предположим, что если входное изображение имеет размер 800×600 пикселей, то выходное изображение с измененным размером будет иметь размер 100×75 пикселей.

- convert input.png -resize 100x100 output.png

#### Изменение размера изображения до 100×100 пикселей без учета соотношения сторон

*Размер изображения будет изменен ровно на 100×100 пикселей*

- convert input.png -resize 100x100! output.png

#### Качество 

Реализовать это очень просто:

- convert -strip -interlace Plane -quality 85 input-file.jpg output-file.jpg 
- convert -strip -quality 80 input-file.jpg output-file.jpg
- convert kofe.png kofe.jpg - input/output

Подробнее про опции:

```
-strip убирает лишнюю метаинформацию
-quality устанаввливает качество результата в процентах; 
рекомендуется в диапазоне 75..90
-interlace Plane определяет режим подгрузки изображения, в данном случае всё изображение при загрузке в браузере будет отображаться постепенно из размытого состояния к более чёткому.
```

При работе с PNG изображениями можно достичь меньшего размера, если урезать палитру до минимально необходимого набора цветов:

- convert -colors 8 input-file.jpg output-file.jpg 

Где:

-colors 8 указывает на количество цветов в выходном файле.

---

#### Основные команды с использование convert

Ресайз всех изображений в директории

`$ for a in `ls`; do echo $a && convert $a -resize <Width>x<Height> $a; done`

#### Сконвертировать ai(tiff, eps, pdf) в jpg

- convert file.ai file.jpg

#### Изменить формат всех изображений с png на jpg

- mogrify -format jpg *.png  


#### Создаем PDF из JPEG

- convert *.jpg -adjoin -monitor MyPDF.pdf

#### Создаём превью для всех картинок в каталоге

`$ for file in *.jpg;  do convert -scale 100 $file tn_$file ; done`

#### Сделать картинки в папке серыми

- mogrify -type Grayscale *.jpg

#### Добавить текст 'Flower' на картинку

- convert flower.jpg -font courier -fill white -pointsize 20 -annotate +50+50 'Flower' flower_annotate1.jpg

#### Разместить текст 'Flower' внизу, по центру, добавив прозрачный фон

- convert flower.jpg -fill white -box '#00770080' -gravity South -pointsize 20 -annotate +0+5 '   Flower   ' flower_annotate2.jpg