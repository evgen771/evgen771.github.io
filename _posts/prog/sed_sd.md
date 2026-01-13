#### sed → sd

sd — современная альтернатива sed, упрощающая замену текста.

#### Примеры использования:

>Заменить «foo» на «bar» в файле:

`sd 'foo' 'bar' file.txt`

>Заменить «foo» на «bar» во всех .txt файлах в каталоге:

`sd 'foo' 'bar' *.txt`

`sd -s 'https://www.gnu.org/software/sed/manual/sed.html' 'https://github.com/chmln/sd'`

`-s` опция сообщает `sd` для буквального чтения входных строк, специальных символов и всего остального.

Это отличный вариант для простых замен, когда вам не нужна мощная мощность регулярных выражений.

### Установка:

#### установка в FreeBSD

`pkg install sd`

#### установка в Arch Linux

`yay -S sd`

#### универсальная установка через cargo

`cargo install sd`

#### установка через snap

`sudo snap install sd`

#### установка через dnf

`sudo dnf install sd`



