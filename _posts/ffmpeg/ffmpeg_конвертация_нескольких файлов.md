#### Преобразование файлов на основе расширения: 

В нашем первом примере мы создадим скрипт для преобразования всех файлов с определённым расширением в каталоге в другой формат. 

Это особенно полезно, когда вам нужно преобразовать целую коллекцию медиафайлов в более совместимый или сжатый формат.

```bash
#!/bin/bash

# Specify the input and output formats
input_format="mp4"
output_format="mkv"

# Loop through all files with the input format
for file in *.$input_format; do
    # Extract the base name without the extension
    base_name=$(basename "$file" .$input_format)

    # Construct the output file name
    output_file="${base_name}.${output_format}"

    # Use ffmpeg to convert the file
    echo "Converting file: $file"
    ffmpeg -loglevel quiet -i "$file" "$output_file"

    echo "Converted $file to $output_file"
done
```
Этот скрипт циклически проходит по всем `.mp4` в текущем каталоге, преобразуя их в `.mkv`. `basename` извлекает имя файла без расширения, позволяя скрипту создать новое имя файла с желаемым форматом вывода. 

Настройте `input_format` и `output_format`переменные, необходимые для разных типов файлов.

#### Преобразование всех файлов в определённом каталоге:

Второй пример демонстрирует, как преобразовать все файлы в определённом каталоге. Этот подход полезен, когда каталог содержит различные типы медиафайлов и вы хотите преобразовать их все в один формат.

```bash
#!/bin/bash

# Directory containing the media files
directory="/path/to/your/media/files" # update your directory
output_format="avi"

# Change to the specified directory
cd "$directory"

# Loop through all files in the directory
for file in *; do
    # Skip directories
    if [ -d "$file" ]; then
        continue
    fi

    # Extract the base name and extension
    base_name=$(basename "$file")
    extension="${file##*.}"

    # Construct the output file name
    output_file="${base_name%.*}.${output_format}"

    # Use ffmpeg to convert the file
    echo "Converting file: $file"
    ffmpeg -loglevel quiet -i "$file" "$output_file"

    echo "Converted $file to $output_file"
done
```

Этот скрипт переходит в указанный каталог и преобразует каждый файл в `.avi`. Перед началом преобразования он проверяет каждый элемент, чтобы убедиться, что это файл, а не каталог. Скрипт можно настроить так, чтобы исключить/включить определённые типы файлов или применить различные параметры преобразования в зависимости от типа файла.


