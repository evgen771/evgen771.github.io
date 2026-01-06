sudo freebsd-update fetch
sudo freebsd-update install
sudo freebsd-update -r 15.1-RELEASE upgrade
sudo freebsd-update install
sudo reboot
sudo freebsd-update install

sudo pkg-static upgrade -f

sudo rm rf /usr/ports/
$ git clone https://git.freebsd.org/ports.git /usr/ports
