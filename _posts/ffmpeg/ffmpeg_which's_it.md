Общая структура любой команды FFmpeg такова:

ffmpeg -i archivo_entrada archivo_salida

Некоторые важные моменты:

    Параметры применяются к следующему входному или выходному файлу. Заказ имеет значение.
    Вы можете иметь несколько входных и выходных файлов, манипулируя каждым из них с помощью индексов.
    Если выходной файл не указан, FFmpeg только отобразит информацию в консоли, но не создаст новый файл.
    Глобальные параметры (например, уровень детализации) располагаются в начале.

Например, чтобы преобразовать файл AVI в MP4:

ffmpeg -i video.avi video.mp4

А если вы хотите установить определенный параметр, например, битрейт видео 2500 кбит/с и битрейт аудио 192 кбит/с:

ffmpeg -i video.avi -b:v 2500k -b:a 192k video_final.mp4

Основные команды для преобразования формата
Изменить формат видео или аудио

    Из MP4 в AVI:
    ffmpeg -i entrada.mp4 salida.avi
    Из MKV в MP4:
    ffmpeg -i original.mkv convertida.mp4
    Из AVI в MPG (MPEG):
    ffmpeg -i video.avi video.mpg
    Из FLV в MPEG:
    ffmpeg -i video.flv video.mpeg
    Из MOV в MP4:
    ffmpeg -i archivo.mov resultado.mp4

Формат выходного файла определяется только изменением расширения, но если вы хотите принудительно задать кодек или определенные функции, добавьте необходимые параметры:

ffmpeg -i entrada.mov -c:v libx264 -c:a aac salida.mp4
Конвертировать аудио между форматами

    Из WAV в MP3:
    ffmpeg -i cancion.wav nueva.mp3
    Из WMA в MP3:
    ffmpeg -i audio.wma -f mp3 -ab 192 audio.mp3
    Из FLAC в OGG:
    ffmpeg -i original.flac destino.ogg

Вы также можете изменить такие параметры, как кодек, скорость передачи данных, каналы или дискретизацию:

ffmpeg -i sonido.flac -acodec libmp3lame -ab 128k -ar 44100 nuevo.mp3
Практический пример: конвертация нескольких файлов

Для пакетного преобразования файлов в папке используйте цикл в bash:


for archivo in *.avi; do
ffmpeg -i "$archivo" "${archivo%.avi}.mp4"
done

Это преобразует все файлы AVI в папке в файлы MP4.
Контроль качества и корректировка основных параметров
Битрейт видео и аудио

    Видео: -b:v 3000k (3000 кбит/с)
    аудио: -b:a 192k (192 кбит/с)

Вы можете настроить качество в зависимости от использования. Например, для мобильный Вы можете уменьшить разрешение и битрейт:

ffmpeg -i entrada.mkv -vf scale=1280:720 -b:v 1500k salida.mp4

И для более легких аудио:

ffmpeg -i cancion.wav -b:a 96k cancion_compacta.mp3
Измените разрешение и соотношение сторон

    Чтобы принудительно установить определенное выходное разрешение:
    ffmpeg -i entrada.mp4 -s 1280x720 salida_720p.mp4
    Чтобы изменить соотношение сторон:
    ffmpeg -i entrada.mp4 -aspect 16:9 salida_16_9.mp4

Иногда некоторым устройствам требуются определенные форматы пикселей, например телевизорам LG, которым нужны -pix_fmt yuv420p: подробнее о совместимости пикселей.
Измените частоту кадров в секунду (FPS)

Чтобы изменить или принудительно установить значение FPS:

ffmpeg -i original.mp4 -r 30 salida_30fps.mp4

Помните, что изменение разрешения или частоты кадров не улучшает исходное качество, хотя это может быть необходимо для совместимости.
Извлечение информации и анализ файлов

Перед конвертацией необходимо знать характеристики файла:

ffmpeg -i archivo.ext

В консоли отобразятся кодек, длительность, качество, каналы и метаданные.

Если вы хотите, чтобы вывод был чище, добавьте -hide_banner: Подробнее об аналитике и метаданных.

ffmpeg -hide_banner -i archivo.ext

Для комплексного и настраиваемого анализа используйте ffprobe: Подробнее о ffprobe и расширенном анализе.

ffprobe -i archivo.ext -print_format json -show_format -show_streams

Таким образом вы получите всю информацию, структурированную в формате JSON.
Расширенное редактирование и обработка мультимедийных файлов
Изменить метаданные

    Экспорт метаданных из файла MP3:
    ffmpeg -i cancion.mp3 -f ffmetadata metadata.txt
    Изменение и импорт метаданных:
    ffmpeg -i original.mp3 -metadata artist='Nuevo Artista' -acodec copy salida.mp3

Вы можете редактировать такую ​​информацию, как исполнитель, альбом, жанр, год, трек и т. д. Идеально подходит для организации вашей музыки или адаптации ее для требовательных плееров (например, Apple).
Извлечь аудиодорожки или удалить аудио/видео

    Извлечь только аудио без перекодирования:
    ffmpeg -i original.avi -vn -acodec copy solo_audio.mp3
    Извлечь преобразованный аудиофайл в другой формат (например, из видео):
    ffmpeg -i video.mp4 -q:a 0 -map a solo_audio.mp3
    Удалить все звуковые дорожки из видео:
    ffmpeg -i original.avi -map 0 -map -0:a -c copy sin_audio.avi
    Удалить все аудиопотоки, кроме определенных:
    ffmpeg -i original.avi -map 0 -map -0:a:3 -map -0:a:6 -c copy con_dos_streams.avi
    Извлечь только определенную звуковую дорожку:
    ffmpeg -i original.avi -map 0:a:2 -c copy solo_pista2.avi

Извлекайте изображения или создавайте видео из изображений

    Извлечь все кадры как изображения:
    ffmpeg -i video.mp4 imagen%d.jpg
    Извлекать один кадр каждую секунду:
    ffmpeg -i video.mp4 -vf fps=1 imagen%d.jpg
    Извлечь только ключевые кадры:
    ffmpeg -i video.avi -vf "select=eq(pict_type\,I)" -vsync vfr imagen%d.jpg
    Создайте видео из последовательности изображений:
    ffmpeg -i imagen%d.jpg video.avi
    Создайте видео с пользовательской частотой кадров:
    ffmpeg -framerate 1 -i img%03d.png -r 25 -pix_fmt yuv420p salida.mp4

Конвертировать видео в анимированный GIF

FFmpeg позволяет преобразовать видеоклип в анимированный GIF-файл, полезный для мемов и социальных сетей:

ffmpeg -i original.mp4 -vf "scale=320:-1" animado.gif

Для более высокого качества сначала извлеките кадры и используйте такой инструмент, как gifski:

ffmpeg -i original.mp4 frame%04d.png
gifski -o salida.gif frame*.png
Конвертируйте между разрешениями 4K, FullHD, HD…

    От 4K до FullHD (смена контейнера):
    ffmpeg -i 4k.mkv -vf scale=1920:1080 -q:a 0 -q:v 0 1080p.avi
    От FullHD до HD:
    ffmpeg -i fullhd.mkv -vf scale=1280:720 -b:v 2000k hd.mp4
    От FullHD до 4K:
    ffmpeg -i 1080p.mkv -vf scale=3840:-1 4k.mkv

Редактирование фрагментов: вырезание, объединение, обрезка и комбинирование файлов
Вырезать видео или аудио фрагмент

Чтобы извлечь определенный фрагмент файла:

ffmpeg -ss 00:00:30 -t 00:00:15 -i original.mp4 -c copy fragmento.mp4

Это монтаж с 30-й секунды, длительностью 15 секунд. Если вы хотите определить конец, а не продолжительность, используйте -to:

ffmpeg -ss 00:00:35 -to 00:01:05 -i original.mp4 -c copy fragmento.mp4

Вы также можете сократить от начала до определенной точки:

ffmpeg -t 00:01:36 -i original.mp4 -c copy recortado.mp4
Объединить несколько видео в одно

Самый надежный метод — с помощью списков файлов и фильтрации. concat: Подробнее об объединении файлов с помощью FFmpeg

    Создайте текстовый файл (например, lista.txt) с названиями видео:

файл 'part1.mp4' файл 'part2.mp4'

    Бежать:

ffmpeg -f concat -safe 0 -i lista.txt -c copy resultado.mp4

Этот метод быстрый и не требует повторного сжатия, но видео должны иметь идентичные кодеки.
Объедините аудио и видео из разных файлов

Вы можете объединить аудиофайл с видеофайлом:

ffmpeg -i video.mp4 -i audio.mp3 -c:v copy -c:a aac -strict experimental final.mp4

Чтобы заменить звуковую дорожку видео:

ffmpeg -i video.mp4 -i nuevo_audio.mp3 -map 0:v -map 1:a -c copy video_con_nuevo_audio.mp4
Автоматизация: пакетное преобразование и создание сценариев

---

Одной из сильных сторон FFmpeg является автоматизация процессов с использованием bash-скриптов. Вы можете изменить формат сотен файлов всего несколькими строками:

IFS=$'\n'
for i in *.webm; do ffmpeg -i "$i" "${i/%.webm/.mp3}"; done; unset IFS

С помощью аналогичных циклов вы можете конвертировать .flv в .ogg или любую другую комбинацию. Помните, что в именах с пробелами использование IFS Это имеет важное значение.

---

Исправления ошибок и совместимость
Восстановить проблемные файлы

Некоторые видео могут работать некорректно на таких устройствах, как Smart TV. Решите эту проблему, создав копию в FFmpeg без перекодирования:

ffmpeg -i video_orig.avi -c:v copy -c:a copy reparado.avi

Если возникнут проблемы с разрешением, можно принудительно -vf "setdar=16:9,setsar=1:1" чтобы установить соответствующее соотношение сторон. 

Оптимизировать для максимальной совместимости

Если вам нужен файл MKV, который будет работать практически на всех телевизорах, используйте:

ffmpeg -i original.mkv -c:a libmp3lame -pix_fmt yuv420p compatible.mkv

Иногда аудиокодеки могут вызывать проблемы, поэтому для максимальной совместимости выбирайте MP3 или AAC.

Другие сложные задачи и операции
Извлечь и добавить субтитры

    Конвертировать субтитры из .vtt в .ass:
    ffmpeg -i subtitulos.vtt salida.ass
    Добавить субтитры к видео:
    ffmpeg -i video.mp4 -i subtitulos.srt -map 0 -map 1 -c copy -c:v libx264 -crf 23 -preset veryfast salida.mkv

Удалить субтитры и другие потоки

ffmpeg -i entrada.mkv -map 0:v -map 0:a -c copy solo_video_audio.mkv
Добавить водяные знаки или логотипы

Вы можете добавить изображение (например, PNG с прозрачностью) в любой угол:

ffmpeg -i video.mp4 -i logo.png -filter_complex "overlay=10:10" salida.mp4

Чтобы разместить логотип в правом нижнем углу:

ffmpeg -i video.mp4 -i logo.png -filter_complex "overlay=W-w-10:H-h-10" salida.mp4
Отрегулируйте громкость или очистите звук

    Увеличьте громкость, умножив ее на 3.5:
    ffmpeg -i entrada.mkv -filter:a "volume=3.5" -c:v copy -acodec mp3 salida.mkv
    Удалить фоновый шум (требуется sox):
    Сначала извлеките фрагмент шума
    ffmpeg -i entrada.mp3 -ss 00:00:00 -t 1 ruido.mp3
    то:
    sox entrada.mp3 limpio.mp3 noisered noise.prof 0.21

Синхронизировать аудио и видео

Если вы обнаружили рассинхронизацию, задержите аудио или видео с помощью -itsoffset o -af adelay:

ffmpeg -itsoffset 1.7 -i video.mkv -i video.mkv -map 0:0 -map 1:1 -acodec copy -vcodec copy sincronizado.mkv

В более простых случаях для задержки звука на 1.7 секунды:

ffmpeg -i video1.webm -af "adelay=1700|1700" -vcodec copy video_sincronizado.webm
Объедините видео с разными кодеками или форматами

Если файлы не имеют одинаковых кодеков и параметров, лучше всего сначала перекодировать их или использовать concat с транскодированием. Вы также можете проверить .

ffmpeg -f concat -i lista.txt -c:v libx264 -c:a aac -strict experimental salida.mp4
Повернуть видео

Чтобы повернуть видео на 90 градусов вправо:

ffmpeg -i original.mov -vf "transpose=1" -c:a copy rotado.mov

Для 180 градусов:

ffmpeg -i original.mov -vf "transpose=2,transpose=2" -c:a copy rotado.mov
Зациклить видео

ffmpeg -stream_loop 2 -i original.mp4 -c copy loop.mp4

Число указывает на повторения; используйте -1 для бесконечности.
Стабилизация дрожащих видео

Для нестабильных видео:

    Обнаруживает движение:
    ffmpeg -i tembloroso.avi -vf vidstabdetect=stepsize=6:shakiness=3:accuracy=9:result=vectors.trf -f null -
    Исправьте видео:
    ffmpeg -i tembloroso.avi -vf vidstabtransform=input=vectors.trf:zoom=1:smoothing=30,unsharp=5:5:0.8:3:3:0.4 -vcodec libx264 -preset slow -tune film -crf 18 -acodec copy corregido.avi

Скорость воспроизведения

Чтобы ускорить или замедлить видео:

    Ускорение x2:
    ffmpeg -i video.mpg -vf "setpts=0.5*PTS" rapido.mpg
    Замедлить x4:
    ffmpeg -i video.mpg -vf "setpts=4.0*PTS" lento.mpg

Записывайте видео с вашего рабочего стола или транслируйте его

    Запись рабочего стола (FullHD) и звука:
    ffmpeg -f alsa -i default -f x11grab -s 1920x1080 -r 30 -i :0.0 -preset ultrafast -vcodec libx264 -tune zerolatency -f mpegts tcp://IP_DESTINO:4444
    Запись с веб-камеры:
    ffmpeg -f v4l2 -i /dev/video0 -preset ultrafast salida.webm

Автоматизируйте массовое редактирование и повторяющиеся задачи

Объединить FFmpeg в скрипты bash, питон или любой язык, который обрабатывает процессы преобразования, переименования и обработки сотен файлов одновременно. Пример автоматической резки с использованием файла со списком задач и скрипт который обойдет весь каталог и выполнит соответствующие команды для каждого файла по мере необходимости.

---

Автоматически изменять несколько форматов файлов

Используйте пользовательские циклы или скрипты. Например, чтобы преобразовать все файлы .wav на компакт-диске в MP3 и сохранить их в папке:

cd /ruta/al/cd
mkdir ~/MP3s
IFS=$'\n'
for i in *.wav; do ffmpeg -i "$i" ~/MP3s/"${i/%.wav/.mp3}"; done; unset IFS

---

Продвинутый случай: конвертация контента DVD, Blu-ray или ISO

Смонтируйте ISO-образ в своей системе.
Распознает видеофрагменты (обычно .VOB для DVD, .m2ts для BluRay).

Объедините большие файлы, чтобы получить полный фильм:

    cat VTS_01_1.VOB VTS_01_2.VOB VTS_01_3.VOB VTS_01_4.VOB > pelicula.vob
    
Проверьте трансляции:
    
    ffmpeg -probesize 4G -analyzeduration 4G -i pelicula.vob
    
Выберите только необходимые потоки (например, видео и аудио на испанском языке):

    ffmpeg -i pelicula.vob -q:a 0 -q:v 0 -map 0:1 -map 0:2 pelicula_es.mkv

Весь процесс можно адаптировать под потребности, и вы можете включать субтитры или альтернативные дорожки, используя соответствующие параметры. -map.
