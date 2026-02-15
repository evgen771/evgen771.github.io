Да, можно модифицировать скрипт так, чтобы он изменял размер изображений с любых поддерживаемых форматов (например, .jpg, .jpeg, .png, .webp, .gif) и сохранял результат в формате .jpg.

Вот обновлённый скрипт:

#!/bin/bash
for file in *.{jpg,jpeg,png,webp,gif}; do
  if [[ -f "$file" ]]; then
    filename="${file%.*}"
    magick "$file" -resize 50% -strip -quality 85 "resized_${filename}.jpg"
  fi
done

Пояснение:

    ${file%.*} — удаляет расширение файла. Например, photo.png → photo.

    "resized_${filename}.jpg" — создаёт имя с префиксом resized_ и фиксированным расширением .jpg.

    -strip — удаляет EXIF-данные, геолокацию, комментарии и другую метаинформацию, что уменьшает размер файла.

    -quality 85 — задаёт качество JPEG (значение от 1 до 100). 85 — хороший баланс между качеством и размером.

    ImageMagick автоматически конвертирует формат при указании .jpg в имени выходного файла.

Особенности при конвертации:

    PNG с прозрачностью: прозрачный фон будет заменён на чёрный или белый (по умолчанию — чёрный). Чтобы задать белый фон:
    
#!/bin/bash
magick "$file" -resize 50% -background white -alpha remove -alpha off -strip -qualiy 85 "resized_${filename}.jpg"

---

Чтобы удалить исходные файлы после успешного изменения размера и конвертации в .jpg, добавьте команду rm в скрипт. Удаление выполняется только если конвертация прошла без ошибок.

Вот обновлённый скрипт:

#!/bin/bash
for file in *.{jpg,jpeg,png,webp,gif}; do
  if [[ -f "$file" ]]; then
    filename="${file%.*}"
    if magick "$file" -resize 50% -background white -alpha remove -alpha off -strip -quality 80 "resized_${filename}.jpg"; then
      rm "$file"
    fi
  fi
done

---

### Альтернатива: 

#### Переименовать без префикса, заменив оригиналы

Если вы хотите, чтобы итоговые файлы имели те же имена, что и исходные, но в формате .jpg, и заменяли оригиналы:

#!/bin/bash
for file in *.{jpg,jpeg,png,webp,gif}; do
  if [[ -f "$file" ]]; then
    filename="${file%.*}"
    if magick "$file" -resize 50% -background white -alpha remove -alpha off -strip -quality 85 "${filename}.jpg"; then
      rm "$file"
    fi
  fi
done


