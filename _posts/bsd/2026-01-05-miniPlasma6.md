---
layout: post
title: Установка рабочего стола(DE) plasma6-plasma в FreeBSD 15
categories: BSD
---

#### Думаю сама установка FreeBSD больших трудностей не вызовет!

>Перед установкой узнать свою видеокарту!!!
>Здесь я делал установку со своей intel !!!
>Здесь установка на "реальное железо" !!!

>Смотреть:

[handbook_x11_en](https://docs.freebsd.org/en/books/handbook/x11/)

[handbook_x11_ru](https://docs.freebsd.org/ru/books/handbook/x11/)

В HandBook все расписано, разложено по <полочкам>.

#### Установка минимальной Plasma6 с менеджером входа(DM) sddm

*Установка с моей видеокартой Intel. Все о видеокартах читать в Handbook*

```
login: root
passwd: *******
pkg
pkg update
pkg ins -y xorg
pkg ins -y drm-kmod
pkg ins -y xf86-video-intel
pkg ins -y plasma6-plasma
pkg ins -y sddm
sysrs sddm_enable=YES
sysrs sddm_lang="ru_RU"
sysrs dbus_enable=YES
sysrs kld_list+=i915
ee /etc/sysctl.conf
net.local.stream.recvspace=65536
net.local.stream.sendspace=65536
Esc --> a --> a
reboot
```
#### Plasma 6 без менеджера входа(DM) sddm

>no root

  
```sh
- $ ee .xinitrc

- exec dbus-launch --exit-wich-x11 ck-launch-session startplasma-x11

- Esc

- a

- a

- reboot

- startx
```
