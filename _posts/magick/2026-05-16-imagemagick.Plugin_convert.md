---
layout: post
title:  ImageMagick. Программы, опции из состава ImageMagick.
category: Magick
---

### Утилита `convert` осуществляет преобразование изображений в командной строке.

Например она умеет осуществлять преобразование форматов, создание анимации, манипуляции над изображениями:

*вращение, изменение размера, цветовой гаммы, разрешения в точках на дюйм и т.д.*

### !!! ЧИТАТЬ ОБЯЗАТЕЛЬНО !!!

Команда `convert` устарела в `Img7`(`ImageMagick7`), используйте `magick` вместо `convert` или `magick convert`

В дистрибутивах, в репозиториях которых есть `ImageMagick 7.*`, обе утилиты доступны после установки этого пакета:

- magick
- convert

И вы можете использовать любую из этих команд для преобразования изображений и выполнения других действий.

Но на самом деле команда `convert` — это всего лишь символическая ссылка на `magick`.

При этом синтаксис и опции этих команд одинаков, поэтому вы можете использовать `convert` или `magik` как взаимозаменяемые команды для конвертации изображений.

Следующие команды также являются символическими ссылками на команду `magick`:

- animate
- compare
- composite
- conjure
- convert
- display
- identify
- import
- mogrify
- montage
- stream

Все эти команды теперь отсутствуют как отдельные программы, и их вызов запустит `magick`

По этой причине вы можете столкнуться с проблемой, что хотя эти утилиты присутствуют в системе, при попытке их использования будут возникать ошибки, связанные с неправильным синтаксисом или параметрами программы.

Однако вы все равно можете вызвать устаревшую утилиту, пример вызова утилиты `logo`:

`magick logo: logo.png`

В дистрибутивах с `ImageMagick 6.*` для конвертации изображений доступна только программа `convert`.

### Формат вызова программы

`convert [input-options] input-file [output-options] output-file`

 *где [`options`] могут принимать значения:*

### Опции командной строки

```bash  
-adaptive-blur geometry	адаптивное размытие пикселей; уменьшение эффекта вблизи края	adaptively blur pixels; decrease effect near edges
-adaptive-resize geometry	адаптивное изменения размера изображения с данными зависимой триангуляции.	adaptively resize image with data dependent triangulation.
-adaptive-sharpen geometry	адаптивное заострение пикселей; увеличение эффекта вблизи края	adaptively sharpen pixels; increase effect near edges
-adjoin	объединение изображений в один файл	join images into a single multi-image file
-affine matrix	родственное преобразование матрицы	affine transform matrix
-alpha	включить, активировать, выключить, дезактивировать, настройка
(регулировка), непрозрачный, копировать, прозрачный, извлечение, задний фон, или форма альфа-канал	on, activate, off, deactivate, set, opaque, copy», transparent, extract, background, or shape the alpha channel
-annotate geometry text	комментарии к геометрии текста	annotate the image with text
-antialias	удалить пиксель-сглаживание	remove pixel-aliasing
-append	добавить последовательность изображений	append an image sequence
-authenticate value	расшифровать изображение с помощью пароля	decipher image with this password
-auto-gamma	автоматически регулировать уровень гамма-изображения	automagically adjust gamma level of image
-auto-level	автоматически отрегулировать цветовые уровни изображения	automagically adjust color levels of image
-auto-orient	автоматически ориентировать изображение	automagically orient image
-background color	цвет фона	background `color`
-bench iterations	измерять эффективность (производительность)	measure performance
-bias value	добавить смещение при сворачивании изображения	add bias when convolving an image
-black-threshold value	сделать все пиксели ниже порогового значения черного цвета	force all pixels below the threshold into black
-blue-primary point	синяя цветность - основная точка	chromaticity blue primary point
-blue-shift factor	моделировать сцену в ночное время в лунном свете	simulate a scene at nighttime in the moonlight
-blur geometry	уменьшение шума изображения и снижение уровня детализации	reduce image noise and reduce detail levels
-border geometry	объемное изображение с цветной рамкой	surround image with a border of color
-bordercolor color	цвет рамки	border color
-brightness-contrast geometry	улучшить яркость/контрастность изображения	improve brightness / contrast of the image
-caption string	назначить подпись к изображению	assign a caption to an image
-cdl filename	цветокоррекция со списком цветового решения	color correct with a color decision list
-channel type	применять опцию, чтобы выбрать каналы изображения	apply option to select image channels
-charcoal radius	имитировать рисунок углем	simulate a charcoal drawing
-chop geometry	удаление пикселей с внутренних изображений	remove pixels from the image interior
-clamp	ограничить цвета от 0 до квантовой глубины	restrict colors from 0 to the quantum depth
-clip	клип по первому пути из профиля 8BIM	clip along the first path from the 8BIM profile
-clip-mask filename	соединение клипа маски с изображением	associate clip mask with the image
-clip-path id	клип по названному пути из профиля 8BIM	clip along a named path from the 8BIM profile
-clone index	клонировать изображение	clone an image
-clut	применять таблицы цветности к изображению	apply a color lookup table to the image
-contrast-stretch geometry	улучшить контраст изображения путем растяжения диапазона значения интенсивности	improve the contrast in an image by stretching the range of intensity value
-coalesce	объединить последовательность изображений	merge a sequence of images
-colorize value	раскрасить изображение цветозаполнением	colorize the image with the fill color
-color-matrix matrix	применить коррекцию цвета для изображения	apply color correction to the image.
-colors value	предпочтительное количество цветов в изображении	preferred number of colors in the image
-colorspace type	настройка цветового изображения	set image colorspace
-combine	объединить последовательность изображений	combine a sequence of images
-comment string	аннотировать изображения с комментарием	annotate image with comment
-compose operator	настройка изображения методом комбинирования	set image composite operator
-composite	составное изображение	composite image
-compress type	Изображение сжатого типа	image compression type
-contrast	повысить или уменьшить контрастность изображения	enhance or reduce the image contrast
-convolve coefficients	применить ядро свертки к изображению*	apply a convolution kernel to the image
-crop geometry	кадрировать изображение	crop the image
-cycle amount	вращение палитры изображения	cycle the image colormap
-decipher filename	конвертация скрытых пикселей в обычные*	convert cipher pixels to plain
-debug events	показать развернутую отладочную информацию	display copious debugging information
-define format:option	определить один или несколько вариантов формата изображения	define one or more image format options
-deconstruct	разбить последовательность изображений на составные части	break down an image sequence into constituent parts
-delay value	отображение следующего изображения после паузы	display the next image after pausing
-delete index	удалить изображение из последовательности изображений	delete the image from the image sequence
-density geometry	горизонтальная и вертикальная плотность изображения	horizontal and vertical density of the image
-depth value	глубина изображения	image depth
-despeckle	уменьшить вкрапления в изображении	reduce the speckles within an image
-direction type	визуализация текста справа налево или слева направо	render text right-to-left or left-to-right
-display server	получить изображение или шрифт из этого X-сервера *	get image or font from this X server
-dispose method	Метод удаления слоя	layer disposal method
-distort type coefficients	исказить изображение	distort image
-dither method	применять диффузию при ошибке изображения	apply error diffusion to image
-draw string	пометить изображение с графическим примитивом 	annotate the image with a graphic primitive
-duplicate count,indexes	копирование изображения один или несколько раз	duplicate an image one or more times
-edge radius	применить фильтр для обнаружения края на изображении	apply a filter to detect edges in the image
-emboss radius	тиснение изображения	emboss an image
-encipher filename	преобразования простых пикселей в скрытые пиксели	convert plain pixels to cipher pixels
-encoding type	текстовый тип кодирования*	text encoding type
-endian type	Порядок байтов (MSB или LSB) изображения*	endianness (MSB or LSB) of the image
-enhance	применить цифровой фильтр для повышения шума изображения	apply a digital filter to enhance a noisy image
-equalize	выполнять выравнивание гистограммы к изображению	perform histogram equalization to an image
-evaluate operator value	вычисление арифметических, реляционных, или логических выражений	evaluate an arithmetic, relational, or logical expression
-evaluate-sequence operator	вычисления арифметических, реляционных, или логических выражений для последовательности изображений	evaluate an arithmetic, relational, or logical expression for an image sequence
-extent geometry	настройка размера изображений	set the image size
-extract geometry	извлечь область из изображения	extract area from image
-family name	визуализация текста с семейством шрифтов*	render text with this font family
-features distance	проанализировать особенности изображения (например, договора, корреляции и т.д.).	analyze image features (e.g. contract, correlations, etc.).
-fft	реализует дискретное преобразование Фурье (DFT)	implments the discrete Fourier transform (DFT)
-fill color	Цвет, используемый при заполнении графических примитивов	color to use when filling a graphic primitive
-filter type	Используйте этот фильтр, при изменении размера изображения	use this filter when resizing an image
-flatten	сгладить последовательность изображений	flatten a sequence of images
-flip	Переворот изображения в вертикальном направлении	flip image in the vertical direction
-floodfill geometry color	Заливка изображения с цветом	floodfill the image with color
-flop	Переворот изображения в горизонтальном направлении	flop image in the horizontal direction
-font name	визуализация текста с этим шрифтом	render text with this font
-format string	отформатированный вывод характеристики изображения*	output formatted image characteristics
-frame geometry	окружение изображения орнаментальным бордюром	surround image with an ornamental border
-function name	применить функцию к изображению	apply a function to the image
-fuzz distance	Цвета в пределах этого расстояния считаются равными	colors within this distance are considered equal
-fx expression	применять математические выражения к каналам изображения	apply mathematical expression to an image channel(s)
-gamma value	Уровень гамма-коррекции	level of gamma correction
-gaussian-blur geometry	уменьшение шума изображения и снижение уровень детализации	reduce image noise and reduce detail levels
-geometry geometry	Предпочтительный размер или местоположение изображения	preferred size or location of the image
-gravity type	горизонтальное и вертикальное размещение текста	horizontal and vertical text placement
-green-primary point	зеленая цветность - основная точка	chromaticity green primary point
-help	Опции программы для печати	print program options
-identify	определить формат и характеристики изображения	identify the format and characteristics of the image
-ift	реализует обратное дискретное преобразование Фурье (DFT)	implements the inverse discrete Fourier transform (DFT)
-implode amount	взрыв (вздутие) пикселей изображения вокруг центра	implode image pixels about the center
-insert index	вставить последнее изображение в последовательность изображений	insert last image into the image sequence
-intent type	тип цветопередачи при управлении цветом изображения	type of rendering intent when managing the image color
-interlace type	тип изображения в чередующийся схеме*	type of image interlacing scheme
-interline-spacing value	Пространство между двумя строками	the space between two text lines
-interpolate method	метод интерполяции цвета пикселей	pixel color interpolation method
-interword-spacing value	Пространство между двумя словами	the space between two words
-kerning value	Пространство между двумя символами	the space between two characters
-label string	присвоить метку изображению	assign a label to an image
-lat geometry	локальное адаптивное установление порогов	local adaptive thresholding
-layers method	оптимизировать или сравнивать слои изображения	optimize or compare image layers
-level value	настроить уровень контрастности изображения	adjust the level of image contrast
-limit type value	предел ресурса кэш-пиксилей*	pixel cache resource limit
-linear-stretch geometry	линейный участок с насыщением гистограммы******	linear with saturation histogram stretch
-liquid-rescale geometry	масштабировать изображение с резьбой по шву ( по стыку)	rescale image with seam-carving
-log format	Формат отладочной информации	format of debugging information
-loop iterations	Добавить расширение контура Netscape на вашу GIF анимацию	add Netscape loop extension to your GIF animation
-mask filename	связать маску с изображением	associate a mask with the image
-mattecolor color	цвет рамки	frame color
-median radius	применить медианный фильтр к изображению	apply a median filter to the image
-mode radius	заполнить каждый окружающий пиксель преобладающим цветом	make each pixel the `predominant color` of the neighborhood
-modulate value	изменять яркость, насыщенность и оттенок	vary the brightness, saturation, and hue
-monitor	отслеживать прогресс	monitor progress
-monochrome	преобразование изображения в черно-белое	transform image to black and white
-morph value	превращение последовательности изображения	morph an image sequence
-morphology method kernel	применить метод морфологии к изображению	apply a morphology method to the image
-motion-blur geometry	имитация эффекта размытия движущихся объектов	simulate motion blur
-negate	заменить каждый пиксель своим дополнительным цветом	replace each pixel with its complementary color
-noise radius	добавить или уменьшить шум в изображении	add or reduce noise in an image
-normalize	преобразовать изображение, чтобы охватить весь спектр цветов	transform image to span the full range of colors
-opaque color	изменить цвет на цвет заливки	change this color to the fill color
-ordered-dither NxN	заказанное сглаживание изображения	ordered dither the image
-orient type	ориентация изображения	image orientation
-page geometry	размер и расположение изображения на холсте (настройка)	size and location of an image canvas (setting)
-paint radius	имитировать картину маслом	simulate an oil painting
-ping	эффективно определять атрибуты изображения	efficiently determine image attributes
-pointsize value	размер шрифта	font point size
-polaroid angle	имитировать картину Polaroid	simulate a Polaroid picture
-posterize levels	уменьшить изображение с ограниченным числом цветовых уровней	reduce the image to a limited number of color levels
-precision value	установить максимальное количество знаков для печати	set the maximum number of significant digits to be printed
-preview type	режим просмотра изображения	image preview type
-print string	интерпретировать строку и вывести на консоль	interpret string and print to console
-process image-filter	обработать изображение с помощью пользовательского фильтра	process the image with a custom image filter
-profile filename	добавлять, удалять, или применять профиль изображения	add, delete, or apply an image profile
-quality value	JPEG/TIFF/PNG уровень сжатия	JPEG/MIFF/PNG compression level
-quantize colorspace	уменьшить количество цветов изображения в этом цветовом пространстве	reduce image colors in this colorspace
-quiet	подавить все предупреждающие сообщения	suppress all warning messages
-radial-blur angle	Радиальное размытие изображения	radial blur the image
-raise value	Светлее / Темнее края изображения, чтобы создать 3-D эффект	lighten/darken image edges to create a 3-D effect
-random-threshold low,high	случайные границы изображения	random threshold the image
-red-primary point	красная цветность - основная точка	chromaticity red primary point
-regard-warnings	обратите внимание на предупреждающие сообщения	pay attention to warning messages.
-region geometry	применить параметры к части изображения	apply options to a portion of the image
-remap filename	преобразование цветов изображения для совпадения с этим набором цветов	transform image colors to match this set of colors
-render	визуализировать векторную графику	render vector graphics
-repage geometry	размер и расположение изображения на холсте	size and location of an image canvas
-resample geometry	изменить разрешение изображения	change the resolution of an image
-resize geometry	изменить размер изображения	resize the image
-respect-parentheses	настройки остаются в силе до заданной границы	settings remain in effect until parenthesis boundary.
-roll geometry	свернуть изображение вертикально или горизонтально	roll an image vertically or horizontally
-rotate degrees	применять Paeth (ПЭТ)- вращение к изображению*	apply Paeth rotation to the image
-sample geometry	масштаб изображения с частотой выборки пикселей	scale image with pixel sampling
-sampling-factor geometry	горизонтальный и вертикальный показатель дискретизации	horizontal and vertical sampling factor
-scale geometry	масштабировать изображение	scale the image
-scene value	номер появления изображения****	image scene number
-seed value	источник новой последовательности псевдослучайных чисел	seed a new sequence of pseudo-random numbers
-segment values	сегмент изображения	segment an image
-selective-blur geometry	выборочное размытие пикселей в пределах порогового контраста	selectively blur pixels within a contrast threshold
-separate	перевести канал изображения в черно-белый цвет	separate an image channel into a grayscale image
-sepia-tone threshold	моделировать фото с эффектом сепии 	simulate a sepia-toned photo
-set attribute value	установить атрибут изображения	set an image attribute
-shade degrees	оттенок изображения с помощью удаленного источника света	shade the image using a distant light source
-shadow geometry	имитировать тень изображения	simulate an image shadow
-sharpen geometry	резкость изображения	sharpen the image
-shave geometry	урезание (сокращение) пикселей от края изображения	shave pixels from the image edges
-shear geometry	сдвигание одного края изображения по осям Х и Y.	slide one edge of the image along the X or Y axis
-sigmoidal-contrast geometry	увеличить контраст без насыщения подсветки или теней	increase the contrast without saturating highlights or shadows
-smush offset	smush(шум?)*** последовательность изображений вместе***	smush an image sequence together
-size geometry	Ширина и высота изображения	width and height of image
-sketch geometry	имитировать карандашный набросок	simulate a pencil sketch
-solarize threshold	свести на нет все пиксели выше порогового уровня	negate all pixels above the threshold level
-splice geometry	соединить цвет фона в изображение*	splice the background color into the image
-spread radius	сместить пиксели изображения с помощью случайного значения	displace image pixels by a random amount
-statistic type geometry	заменить каждый пиксель соответствующим по значению из окружения*	replace each pixel with corresponding statistic from the neighborhood
-strip	лишить изображение всех профилей и комментариев	strip image of all profiles and comments
-stroke color	графический примитив цвета обводки	graphic primitive stroke color
-strokewidth value	графический примитив ширины штриха	graphic primitive stroke width
-stretch type	визуализация текста с этой деформацией шрифта	render text with this font stretch
-style type	визуализация текста с этим стилем шрифта	render text with this font style
-swap indexes	поменять два изображения в последовательности изображений	swap two images in the image sequence
-swirl degrees	вращение пикселей изображения вокруг центра	swirl image pixels about the center
-synchronize	синхронизировать изображение с запоминающим устройством	synchronize image to storage device
-taint	пометить изображение как измененное	mark the image as modified
-texture filename	наименование текстуры в плитке на фоне изображения	name of texture to tile onto the image background
-threshold value	граница изображения	threshold the image
-thumbnail geometry	создать миниатюру изображения	create a thumbnail of the image
-tile filename	заполнить изображение плиткой с помощью графического примитива	tile image when filling a graphic primitive
-tile-offset geometry	настроить смещение в виде плитки для изображения	set the image tile offset
-tint value	выбрать оттенок для заливки цвета изображения	tint the image with the fill color
-transform	аффинное преобразование изображения	affine transform image
-transparent color	сделать этот цвет прозрачным в изображении	make this color transparent within the image
-transparent-color color	прозрачный цвет	transparent color
-transpose	перевернуть изображение в вертикальном направлении и поворачивать на 90 градусов	flip image in the vertical direction and rotate 90 degrees
-transverse	перевернуть изображение в горизонтальном направлении и вращать на 270 градусов	flop image in the horizontal direction and rotate 270 degrees
-treedepth value	интенсивный цвет дерева	color tree depth
-trim	отделка края изображения	trim image edges
-type type	тип изображения	image type
-undercolor color	цвет ограничивающий прямоугольник	annotation bounding box color
-unique-colors	отказаться от всех, кроме одного, цвета пикселя	discard all but one of any pixel color.
-units type	единицы разрешения изображения	the units of image resolution
-unsharp geometry	резкость изображения	sharpen the image
-verbose	распечатать подробную информацию об изображении	print detailed information about the image
-version	печатная версия информации	print version information
-view	FlashPix просмотр преобразования	FlashPix viewing transforms
-vignette geometry	смягчить края изображения в стиле виньетки(узора)	soften the edges of the image in vignette style
-virtual-pixel method	метод получения пикселей за границей изображения	access method for pixels outside the boundaries of the image
-wave geometry	изменить изображение вдоль синусоиды	alter an image along a sine wave
-weight type	отображение текста с этим размером шрифта	render text with this font weight
-white-point point	оттенок белой точки	chromaticity white point
-white-threshold value	сделать все пиксели ниже порогового значения белого цвета	force all pixels above the threshold into white
-write filename	записывать образы этого файла	write images to this file
```

### Примеры использования

`convert imageIn -resize "800x600" imageOut`   - преобразование изображения с указанием точных размеров
   
`convert imageIn -resize 50% imageOut`         - уменьшение изображения в 50% от исходного
   
`convert imageIn -resize x480 imageOut`        - преобразование изображения с пропорциональным сжатием по ширине

`convert *.jpg имя_файла.pdf `          - преобразование файлов JPG->PDF

`convert имя_файла.pdf имя_файла.jpg`   - преобразование PDF->JPG
   
Замечание:
     
*При конвертировании многостраничного документа будут созданы файлы вида ''имя_файла-*.jpg'' по количеству страниц*.

### Ссылки:

- [ImageMagick Convert Command-line Tool: Convert](http://www.imagemagick.org/script/convert.php "http://www.imagemagick.org/script/convert.php")
- [Конвертирование *.jpeg файлов в другое разрешение в Linux](http://linsovet.com/image-script-mass-convert-imagemagick "http://linsovet.com/image-script-mass-convert-imagemagick")
- [Linux / Unix Command: convert](http://linux.about.com/od/commands/l/blcmdl1_convert.htm "http://linux.about.com/od/commands/l/blcmdl1_convert.htm")
- [ImageMagick — Пингвиньи радости](http://tdkare.ru/sysadmin/index.php/ImageMagick#.D0.A3.D1.82.D0.B8.D0.BB.D0.B8.D1.82.D0.B0_composite)
- [ImageMagick: Command-line Options](https://www.hansagroup.de/im/www/command-line-options.html) - более развернуто
