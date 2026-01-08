#### Как запускать far2l сразу в kitty? 

Создаём файл-ярлык для стартового меню:

- far2l -e /usr/local/share/applications/kitty-far2l.desktop

и пишем туда:
``
[Desktop Entry]
Name=Far2l in Kitty
Exec=kitty far2l --tty
Icon=far2l.svg
Type=Application
Categories=Utility;FileManager
``
#### Как сделать kitty терминалом по умолчанию?

- sudo update-alternatives --config x-terminal-emulator
