---
layout: post
title: Выберите видеокарту при установке FreeBSD
categories: BSD
---

Есть следующие варианты: `Intel`,`AMD`, `AMD-Legacy`, `Nvidia`, `Virtualbox`, `VMWare`:

#### Intel

```sh
- pkg install drm-kmod
- sysrc kld_list+=i915kms
```

#### AMD

```sh
- pkg install drm-kmod
- sysrc kld_list+=amdgpu
```

#### AMD-Legacy

```sh
- pkg install drm-kmod
- sysrc kld_list+=radeonkms
```

#### Nvidia

Последнюю версию драйвера NVIDIA® Graphics можно установить, выполнив следующую команду:

```sh
- pkg install nvidia-drm-kmod
- sysrc kld_list+=nvidia-drm
```

[Дополнительно смотреть в документации:](https://docs.freebsd.org/ru/books/handbook/x11/#x-graphic-card-drivers)

#### Virtualbox

```sh
- pkg install -y virtualbox-ose-additions && sysrc vboxguest_enable=\"YES\" && sysrc vboxserviceenable=\"YES\" && whoami"
- sysrc kld_list+=vboxvideo
```

#### VMWare

```sh
- pkg install -y xf86-video-vmware
- sysrc kld_list+=vmwgfx
```

[Handbook](https://docs.freebsd.org/ru/books/handbook/x11/#x-graphic-card-drivers)
