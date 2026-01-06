Проверка №1 — локаль системы

В терминале:

locale


❌ Плохо (часто так на FreeBSD):

LANG=C
LC_ALL=C


✅ Должно быть UTF-8, например:

LANG=ru_RU.UTF-8
LC_ALL=

Как исправить (правильно)
1️⃣ Установить UTF-8 локаль
sudo pkg install ru-freebsd-doc
sudo pkg install lang/ru_RU.UTF-8


(если нет — зависит от релиза)

Или проще:

sudo localedef -i ru_RU -f UTF-8 ru_RU.UTF-8

2️⃣ Прописать локаль

В ~/.profile или ~/.shrc:

export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8


Перелогинься.

3️⃣ Установить нормальные шрифты (ОЧЕНЬ важно)
sudo pkg install noto fontconfig dejavu
fc-cache -fv


Рекомендуется:

Noto Sans

DejaVu Sans
