---
layout: post
title: Минимальная версия KDE Plasma в Debian
categories: Блог
---


**Чтобы установить минимальную версию KDE Plasma в Debian 13**, нужно выполнить следующие шаги:

*Все расписано и разложено по"полочкам". Правда для рабочего стола Gnome, но думаю отличия будут незначительны!!!*

[Install Debian_DE](https://andreyex.ru/debian/minimalnaya-ustanovka-gnome-debian-poshagovoe-rukovodstvo/)


1. Во время установки Debian в разделе «Выбор программного обеспечения» снять все галочки, кроме стандартных системных утилит.
2. Установить систему
3. Перезагрузиться
4. Выполнить команду:

```bash
su
pass
apt install kde-plasma-desktop plasma-nm sddm-theme-breeze kwin-addons -y
```

##### Перезагрузить систему

**После этого будет базовая минимальная настройка KDE Plasma для Debian**
