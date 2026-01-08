#### Install DE KDE plasma6-plasma in FreeBSD 14.2 or XFCE

#### Думаю сама установка FreeBSD больших трудностей не вызовет!


>Перед установкой узнать свою видеокарту!!!
>Здесь я делал установку со своей intel !!!
>Здесь установка на "реальное железо" !!!

>Смотреть:

[handbook_x11_en](https://docs.freebsd.org/en/books/handbook/x11/)

[handbook_x11_ru](https://docs.freebsd.org/ru/books/handbook/x11/)

В HandBook все расписано, разложено "по полочкам".

#### Установка XFCE

```
login: root
passwd: *******
pkg
pkg update
pkg ins -y xorg
pkg ins -y drm-kmod
pkg ins -y xf86-video-intel
pkg ins -y xfce
pkg ins -y lightdm lightdm-gtk-greeter
For XFCE, Plasma:
sysrs dbus_enable=YES
sysrs kld_list+=i915
sysrc lightdm_enable="YES"
Esc --> a --> a
reboot
```
### startx

**XFCE** без менеджера входа (DE)

>no root  

- $ ee .xinitrc

- exec /usr/local/bin/startxfce4 --with-ck-launch

- Esc --> a --> a

- reboot

- startx

#### Установка минимальной Plasma6 с менеджером входа-DE

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
### startx

**Plasma 6** без менеджера входа (DE)

>no root   

- $ ee .xinitrc

- exec dbus-launch --exit-wich-x11 ck-launch-session startplasma-x11

- Esc --> a --> a

- reboot

- startx

------------------------------------------------------------------------

#### sudo, doas
```
# pkg ins -y sudo
sudoers - ee /usr/local/etc/sudoers
%wheel ALL=(ALL) NOPASSWD: ALL

# pkg ins -y doas
ee /usr/local/etc/doas.conf
permit nopass keepenv :wheel
permit nopass keepenv root as root
```
---

*Но перед эти русифицировать Plasma штатным способом:

`Параметры системы —> Локализация`*

#### XFCE, Plasma6 как написано ниже:

```sh
# ee /etc/login.conf - открываем и редактируем

default:\
...
:charset=UTF-8:\
# :lang=C:\           - комметируем строку
:lang=ru_RU.UTF-8:    - добавляем
...
russian|Russian Users Accounts:\
:charset=UTF-8:\
:lang=ru_RU.UTF-8:\
:tc=default:

# cap_mkdb /etc/login.conf - пересобираем файл базы данных в терминале
```

Добавить в /home/jenit/.profile или /home/jenit/.shrc:

# ee /home/jenit/.profile

```sh
export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8
```
---

#### Если не корректно отображается в FreeBSD кириллица при подключении usb

(bsdisk отвечает за монтирование)

В `/usr/local/etc/bsdisks.conf` надо прописать опции монтирования:
```sh
mount_msdosfs_flags = -D cp1251 -L ru_RU.UTF-8
```

#### Ускорить загрузку:

```sh
/boot/loader.conf

security.bsd.allow_destructive_dtrace=0
autoboot_delay="1"
loader.logo="none"
```
---

Handbook FreeBSD:

https://docs.freebsd.org/ru/books/handbook/

Но лучше пользоваться английской версией:

[FreeBSD Handbook | FreeBSD Documentation Portal](https://docs.freebsd.org/en/books/handbook/))

Поиск портов(программ) FreeBSD:

https://ports.freebsd.org/cgi/ports.cgi?query=&stype=all&sektion=all

---

#### lsblk

*В Linux есть очень полезные инструменты. Здесь пример альтернативных команд*.

Во FreeBSD - это команда `gpart show`.
В Linux это - lsblk.
Если вы хотите установить его в свою систему FreeBSD, просто введите команду, приведенную ниже (от root):
```
# fetch -o /usr/local/bin/lsblk https://raw.githubusercontent.com/vermaden/scripts/master/lsblk.sh

# chmod +x /usr/local/bin/lsblk
# hash -r || rehash
# lsblk
```
Мое мнение - gpart отличная программа и ей думаю альтернатива не нужна. Ну это на выбор.

#### free

Во FreeBSD нет консольной программы free, нужно установить программу freecolor, затем создать(добавить запись) `alias free='freecolor -tmo'` в `.shrc`
или запускать саму программу: 
'freecolor -tmo'` 
