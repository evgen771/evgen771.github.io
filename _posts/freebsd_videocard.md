Выберите видеокарту при установке FreeBSD. 
Есть следующие варианты: 'Intel','AMD', 'AMD-Legacy', 'Nvidia', 'Virtualbox', and 'VMWare':
Intel
- pkg install drm-kmod
- sysrc kld_list+=i915kms
AMD
- pkg install drm-kmod
- sysrc kld_list+=amdgpu
AMD-Legacy
- pkg install drm-kmod
- sysrc kld_list+=radeonkms
Nvidia
Последнюю версию драйвера NVIDIA® Graphics можно установить, выполнив следующую команду:
- pkg install nvidia-drm-kmod
- sysrc kld_list+=nvidia-drm
(Дополнительно смотреть в документации:https://docs.freebsd.org/ru/books/handbook/x11/#x-graphic-card-drivers)
Virtualbox
- pkg install -y virtualbox-ose-additions && sysrc vboxguest_enable=\"YES\" && sysrc vboxserviceenable=\"YES\" && whoami"
- sysrc kld_list+=vboxvideo
VMWare
- pkg install -y xf86-video-vmware
- sysrc kld_list+=vmwgfx

https://docs.freebsd.org/ru/books/handbook/x11/#x-graphic-card-drivers