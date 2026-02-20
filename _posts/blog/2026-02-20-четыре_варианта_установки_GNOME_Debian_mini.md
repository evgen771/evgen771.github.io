---
layout: post
title: Gnome mini. Варианты установки GNOME в Debian
categories: Блог
---


#### Есть четыре варианта установки GNOME в Debian:

Полная среда GNOME, включая элементы, которые не являются официальной частью релиза. Предоставляет рекомендуемое окружение среды GNOME для Debian:

`apt-get install gnome`

Официальный набор элементов среды GNOME:

`# apt-get install gnome-desktop-environment`

Минимальная набор элементов, необходимых для работы GNOME:

`# apt-get install gnome-core`

Набор элементов GNOME с вспомогательными технологиями: Чтение с экрана, лупа…:

`# apt-get install gnome-accessibility`

---

Самая минимальная установка среды GNOME:

`apt-get install gdm3 gnome-panel gnome-terminal`

---

#### Установите дополнительные инструменты (необязательно)

**Создайте пользователя Sudo**

*Во время установки вы, вероятно, создадите обычного пользователя. Вы должны назначить права sudo этому пользователю сейчас*.

Для этого выполните:

`apt install sudo`

`adduser andreyex sudo`

Замените `andreyex` на ваше настоящее имя пользователя.

#### Установите GNOME Core (инструкция)

*Все расписано и разложено по"полочкам"*

[GNOME Core Install](https://andreyex.ru/debian/minimalnaya-ustanovka-gnome-debian-poshagovoe-rukovodstvo/)

*Теперь давайте установим основные компоненты GNOME. Откройте терминал и выполните следующие команды*:

- sudo apt update
- sudo apt install gnome-core -y

Выйдите из сеанса root и снова войдите в систему как обычный пользователь.

Отныне вы можете выполнять административные задачи как обычный пользователь с правами sudo.

`sudo apt install network-manager gnome-session pcmanfm gnome-terminal git wget curl -y`

Это позволит установить диспетчер сеансов `GNOME`, файловый менеджер `Nautilus`, терминал `GNOME`, `Mozilla Firefox`, `Git`, `Wget`, `Curl` и редактор `Vim`

---

#### Установка самого GNOME Core:

*Для установки gnome-core в Ubuntu / Linux Mint / Debian, введите в Терминал*:

- sudo apt update
- sudo apt install gnome-core

*Зависимости*:

---

`adwaita-icon-theme`

*Тема значков по умолчанию для GNOME*

---

`at-spi2-core`

*Интерфейс поставщика вспомогательных технологий (ядро dbus)*

---

`baobab`

*Анализатор использования диска GNOME*

---

`caribou`

*Настраиваемая экранная клавиатура с режимом сканирования*

---

`dconf-cli`

*Простая система хранения конфигурации - утилиты*

---

`dconf-gsettings-backend`

*Простая система хранения конфигурации - базовый сервер GSettings*

---

`eog`

*Программа просмотра изображений Eye of GNOME*

`evince`

*Документ (PostScript, PDF) - просмотр*

---

`evolution-data-server`

*Сервер базы данных эволюции*

---

`firefox`

*Безопасный и простой веб-браузер от Mozilla*

---

`chromium-browser`

*Хром веб-браузер, версия с открытым исходным кодом Chrome*

---

`epiphany-browser`

*Интуитивно понятный веб-браузер GNOME*

---

`fonts-cantarell`

*Семейство шрифтов sans serif предназначено для чтения на экране*

---

`gdm3`

*Диспетчер отображения GNOME(менеджер входа)*

---

`gedit`

*Официальный текстовый редактор рабочей среды GNOME*

---

`gkbd-capplet`

*Инструменты центра управления GNOME для libgnomekbd*

---

`glib-networking`

*Связанные с сетью гиомодули для GLib*

---

`gnome-backgrounds`

*Набор фонов, упакованных в рабочий стол GNOME*

---

`gnome-bluetooth`

*Инструменты для GNOME Bluetooth*

---

`gnome-calculator`

*Настольный калькулятор GNOME*

---

`gnome-characters`

*Приложение карты символов*

---

`gnome-contacts`

*Менеджер контактов для GNOME*

---

`gnome-control-center`

*Утилиты для настройки рабочего стола GNOME*

---

`gnome-disk-utility`

*Управлять и конфигурировать диски и носители*

---

`gnome-font-viewer`

*Программа просмотра шрифтов для GNOME*

---

`gnome-keyring`

*Службы контекстного меню GNOME (демон и инструменты)*

---

`gnome-logs`

*Просмотрщик systemd(логов)*

---

`gnome-menus`

*GNOME реализация спецификации меню freedesktop*

---

`gnome-online-accounts`

*Служба для управления онлайн-счетами для рабочего стола GNOME*

---

`gnome-online-miners`

*Пролистывает ваш онлайн-контент*

---

`gnome-session`

*Менеджер сеансов GNOME - сеанс GNOME 3*

---

`gnome-settings-daemon`

*Daemon, обрабатывающий настройки сеанса GNOME*

---

`gnome-shell`

*Графическая оболочка для рабочего стола GNOME*

---

`gnome-shell-extensions`

*Расширения для расширения функциональности оболочки GNOME*

---

`gnome-software`

*Центр программного обеспечения для GNOME*

---

`egnome-sushi`

*Sushi - быстрый просмотрщик для nautilus*

---

`gnome-system-monitor`

*Монитор процессов и системный ресурс для GNOME*

---

`gnome-terminal`

*Приложение эмулятора терминала GNOME*

---

`gnome-themes-extra`

*Adwaita GTK+ 2 тема*

---

`gnome-user-docs`

*Это виртуальный пакет. Для определения виртуальных пакетов см. Политику Debian*

---

`gnome-user-share`

*Общий доступ к общим файлам пользователей через WebDAV или ObexFTP*

---

`gsettings-desktop-schemas`

*Графические схемы GSettings для рабочего стола*

---

`gstreamer1.0-packagekit`

*Плагин GStreamer для установки кодеков с помощью PackageKit*

---

`gstreamer1.0-plugins-base`

*Плагины GStreamer из набора «base»*

---

`gstreamer1.0-plugins-good`

*Плагины GStreamer из «хорошего» набора*

---

`gstreamer1.0-pulseaudio`

*Плагин GStreamer для PulseAudio*

---

gvfs-backends

*Виртуальная файловая система пользователей - бэкенды*

---

`gvfs-bin`

*Виртуальная файловая система пользователей - двоичные файлы*

---

`gvfs-fuse`

*Виртуальная файловая система пользователей - сервер плавких предохранителей*

---

`libatk-adaptor`

*Инструментальный мост AT-SPI 2*

---

`libcanberra-pulse`

*Бэкэнд PulseAudio для libcanberra*

---

`libpam-gnome-keyring`

*Модуль PAM для разблокировки ключа GNOME при входе в систему*

---

`libproxy1-plugin-gsettings`

*Автоматическая библиотека управления конфигурацией прокси (плагин GSettings)*

---

`nautilus`

*Файловый менеджер и графическая оболочка для GNOME*

---

`pulseaudio`

*Звуковой сервер PulseAudio*

---

`sound-theme-freedesktop`

*Свободная тема*

---

`system-config-printer-common`

*Backend и файлы перевода для system-config-printer*

---

`system-config-printer-udev`

*Утилиты для автоматического обнаружения и настройки принтеров*

---

`totem`

*Простой медиаплеер для рабочего стола GNOME на базе GStreamer*

---

`tracker`

*База данных метаданных, индексатор и инструмент поиска*

---

`yelp`

*Справочный браузер для GNOME*

---

`zenity`

*Отображать графические диалоговые окна из сценариев оболочки*

---

