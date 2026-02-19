---
layout: post
title: ImageMagick. convert, mogrify. Очень нужное, повседневное 2.
categories: Magick.
---

#### mogrify и convert - утилиты входящие в состав imagemagick.

Они используются для применения преобразований к файлам изображений. Они понимают одинаковые ключи. 

Команда convert требует указания выходного файла, а mogrify производит операции над самим файлом. 

- mogrify - произвести действия над самим изображением
- convert - произвести действия над изображением и сохранить в другой файл 
- display - вывести изображение на экран
- animate - вывести анимированное изображение на экран 

#### Получение информации об изображении

`magick identify shadow.png`

#### Получите подробную информацию об этом же изображении:

`magick identify -verbose shadow.png`

#### Изменение размера изображения до 100×100 пикселей с сохранением пропорций

Предположим, что если входное изображение имеет размер 800×600 пикселей, то выходное изображение с измененным размером будет иметь размер 100×75 пикселей.

`convert input.png -resize 100x100 output.png`

#### Изменение размера изображения до 100×100 пикселей без учета соотношения сторон

Размер изображения будет изменен ровно на 100×100 пикселей

`convert input.png -resize 100x100\! output.png`

### Основные команды с использование convert

#### Ресайз всех изображений в директории

`$ for a in `ls`; do echo $a && convert $a -resize <Width>x<Height> $a; done`

#### Создаем PDF из JPEG

`convert *.jpg -adjoin -monitor MyPDF.pdf`

#### Создаём превью для всех картинок в каталоге

`$ for file in *.jpg;  do convert -scale 100 $file tn_$file ; done`

#### Добавить текст 'Flower' на картинку

`convert flower.jpg -font courier -fill white -pointsize 20 -annotate +50+50 'Flower' flower_annotate1.jpg`

#### Разместить текст 'Flower' внизу, по центру, добавив прозрачный фон

`convert flower.jpg -fill white -box '#00770080' -gravity South -pointsize 20 -annotate +0+5 '   Flower   ' flower_annotate2.jpg`

#### Обрезать картинку

`convert flower.jpg -crop 128×128+50+50 flower_crop.jpg`

#### Создать анимацию

```bash
$ convert -delay 100 -size 100×100 \
-page +0+0 flower_frame1.gif \
-page +0+0 flower_frame2.gif \
-page +0+0 flower_frame3.gif \
-page +0+0 flower_frame4.gif \
-loop 0 flower_animation.gif
```

#### Повернуть картинку по часовой стрелке на 90 градусов

`mogrify DSC00606.JPG -rotate '90>'` 

#### Сконвертировать ai(tiff, eps, pdf) в jpg

`convert file.ai file.jpg`

#### Разбить pdf на jpg файлы, при этом увеличив разрешение (по сравнению с дефолтным)

`convert -density 400 Next_700.pdf  -scale 2000x1000  file.jpg`

#### Собрать из jpg-файлов gif анимацию

`convert *.jpg images.gif`

#### Собрать из jpg-файлов gif-анимацию с задержкой между кадрами в 1.5 секунды

`convert -delay 150 *.jpg images.gif`

#### Просмотреть список шрифтов, с которыми может работать imagemagick

`convert -list font`

#### Результат:

```bash
Path: /usr/lib/ImageMagick-6.6.0/config/type-ghostscript.xml
    Font: AvantGarde-Book
    family: AvantGarde
    style: Normal
    stretch: Normal
    weight: 400
    glyphs: /usr/share/fonts/type1/gsfonts/a010013l.pfb
Font: AvantGarde-BookOblique
    family: AvantGarde
    style: Oblique
    stretch: Normal
    weight: 400
    glyphs: /usr/share/fonts/type1/gsfonts/a010033l.pfb
```
#### Сделать картинку с текстом 'Anthony'

```bash
$ convert -background lightblue -fill blue \
-font URW-Palladio-Bold-Italic \
-pointsize 72 label:Anthony label.gif
```
#### Расширить картинку до 200х200

*Картинка при этом растягиваться не будет*

`mogrify -extent 200x200 label.gif`

#### Увеличить картинку в 10 раз

`convert -sample 1000% in.jpg out.jpg`

#### Посмотреть список поддерживаемых форматов

`mogrify -list Format`

#### Сделать картинки в папке серыми

`mogrify -type Grayscale *.jpg`

#### Собрать из картинок {1,2,3}.png один файл, добавляя к отступам по 4 пикселя и располагая их в две колонки

`montage -geometry +4+4 -tile 2 1.png 2.png 3.png out.png`

#### Изменить формат всех изображений с png на jpg

`mogrify -format jpg *.png` 


