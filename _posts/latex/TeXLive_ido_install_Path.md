#### Получение TeX Live в виде ISO-образа

Для обычного использования мы рекомендуем установить `TeX Live` через Интернет, но если вы хотите записать свой собственный DVD-диск, вы можете получить наш огромный ISO-образ. Его объем составляет около `6 ГБ`. 

Download: 

`wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz`
or: 
`curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz`
(или любым другим способом, который вам больше нравится)

zcat < install-tl-unx.tar.gz | tar xf - # разархивировать
cd install-tl-2* - # перейти в директорию
./install-tl --no-interaction # установить от имени root

Наконец, добавьте /usr/local/texlive/YYYY/bin/PLATFORM to your PATH

#### Пример(.bashrc)

`export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH`
- Помещая каталог в начало PATH, вы говорите системе, что его нужно проверять первым
or
`export PATH=$PATH:/usr/local/texlive/2025/bin/x86_64-linux:$PATH`
- Каталог, добавленный в конец PATH, будет проверен после всех остальных каталогов

