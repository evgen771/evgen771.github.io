---
layout: post
title:  Как установить шрифты Windows в FreeBSD
categories: BSD
---

Установка шрифтов Windows в FreeBSD выполняется в несколько этапов.

Ниже — пошаговая инструкция

#### 1. Копирование шрифтов с Windows‑систем

Перенесите файлы шрифтов (обычно находятся в `C:\\Windows\\Fonts` на Windows) на компьютер с FreeBSD. 

Способы:

* через сеть (SMB/CIFS, NFS, SCP);
* с внешнего носителя (USB‑диск);
* иным удобным способом.

Допустим, вы скопировали шрифты в каталог `/tmp/windows-fonts/`.

#### 2. Размещение шрифтов в системе FreeBSD

Создайте каталог для пользовательских шрифтов и скопируйте туда файлы:

```sh

sudo mkdir -p /usr/local/lib/X11/fonts/user
sudo cp /tmp/windows-fonts/\*.ttf /usr/local/lib/X11/fonts/user/
sudo cp /tmp/windows-fonts/\*.TTF /usr/local/lib/X11/fonts/user/  # если есть
sudo cp /tmp/windows-fonts/\*.otf /usr/local/lib/X11/fonts/user/  # если есть

```

> **Примечание:** Xorg поддерживает `.ttf`, `.otf`, `.bdf` и др. Если у вас есть шрифты в формате `.dfont` (из macOS), их нужно конвертировать (см. ниже).

#### 3. Обновление кеша шрифтов и генерация индексов

Перейдите в каталог со шрифтами и сгенерируйте файлы индексов:

```sh

cd /usr/local/lib/X11/fonts/user
sudo mkfontscale
sudo mkfontdir

```

Обновите кеш шрифтов FreeType:

```sh

sudo fc-cache -fv

```

#### 4. Настройка Xorg (xorg.conf)

Откройте файл конфигурации X‑сервера:

```sh

sudo vi /etc/X11/xorg.conf

```

Найдите секцию `Section "Files"` (если её нет — создайте). Добавьте строку:

```sh

FontPath "/usr/local/lib/X11/fonts/user"

```

Также убедитесь, что загружен модуль `freetype` (в секции `Section "Module"`):

```sh

Load "freetype"

```

#### Пример фрагмента xorg.conf:

```sh

Section "Files"
    FontPath "/usr/X11R6/lib/X11/fonts/misc"
    FontPath "/usr/X11R6/lib/X11/fonts/TTF"
    FontPath "/usr/local/lib/X11/fonts/user"  # ваша строка
EndSection

Section "Module"
    Load "freetype"
EndSection

```

#### 5. Перезапуск X‑сервера или сессии

Чтобы шрифты стали доступны, перезапустите X‑сервер или выйдите из текущей графической сессии и войдите снова.

#### 6. Проверка установки

Убедитесь, что шрифты видны системе:

**Список шрифтов через `fc-list`:**

```sh
fc-list | grep -i "шрифт\_из\_windows"
```

* **Проверка в приложениях:** откройте текстовый редактор (например, LibreOffice) или браузер и проверьте, появились ли нужные шрифты в списке.

#### Дополнительно: конвертация .dfont (если нужно)

Если у вас есть шрифты `.dfont` (из macOS), установите утилиту `fondu` и конвертируйте:

```sh

cd /usr/ports/sysutils/fondu
make install clean
cd /usr/local/lib/X11/fonts/user
fondu *.dfont
rm *.dfont  # удаляем исходники после конвертации

```

Затем повторите шаги 3–5.

#### Важные замечания

* **Права доступа:** убедитесь, что файлы шрифтов имеют корректные права (`644`) и принадлежат `root`.

* **Перезагрузка:** иногда требуется полная перезагрузка системы, если шрифты не появляются сразу.

* **Альтернативный путь:** можно использовать порты FreeBSD для установки популярных шрифтов (например, `x11-fonts/webfonts`), но это не даст полный набор Windows‑шрифтов.

После выполнения всех шагов шрифты Windows должны быть доступны во всех графических приложениях FreeBSD.

