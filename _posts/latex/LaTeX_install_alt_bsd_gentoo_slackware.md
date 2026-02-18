### ALT

#### Install the TexLive base

- sudo apt-get install texlive-latex-base

***Also install the recommended and extra fonts to avoid running into the error [1], when trying to use pdflatex on latex files with more fonts.***

- sudo apt-get install texlive-fonts-recommended

- sudo apt-get install texlive-fonts-extra

#### Install the extra packages

- sudo apt-get install texlive-latex-extra

### BSD

- pkg search texlive

- pkg install -y texlive-texmf texlive-base/texlive-full

### Slackware

Уже идет из "коробки". При установке главное не отключать группу пакетов `t/`

Можно потом отдельно установить или с сайта или с установочного образа.

Если этого мало, то в "слакбилдах" можно собрать версию "экстра".

[SlackBuilds Repository](https://slackbuilds.org/repository/15.0/office/texlive-extra/)

### Gentoo

[TeX Live_Gentoo](https://wiki.gentoo.org/wiki/TeX_Live)

*TeX Live — это полный дистрибутив TeX с несколькими программами для создания профессиональных документов*.

#### Установка

*Флаги USE-флаги для app-text/texlive*:

```bash
pstricks	 - Добавить пакеты pstricks (dev-texlive/texlive-pstricks)
publishers - 	Добавить поддержку издателей (dev-texlive/texlive-publishers)
science	- Добавить поддержку набора текста для естественных и компьютерных наук (dev-texlive/texlive-mathscience)
tex4ht	- Добавить поддержку dev-tex/tex4ht (для преобразования (La)TeX в (X)HTML, XML и OO.org)
texi2html	- Добавить поддержку app-text/texi2html, который преобразует файлы texi в HTML.
truetype	 - Добавить поддержку шрифтов FreeType и/или FreeType2
xetex	- Добавить поддержку макросов XeTeX (dev-texlive/texlive-xetex)
xml	- Добавить поддержку XML-файлов
```
#### Примечание

Для поддержки дополнительных языков, например, babel или polyglossia, необходимо включить соответствующий флаг использования языка L10N.

#### Emerge

**Install app-text/texlive**:

`# emerge --ask app-text/texlive`

#### Использование

В большинстве случаев пользователи будут использовать TeX Live через редактор по выбору. 

Ниже приведен список компиляторов, способных преобразовать документ .tex в файл .pdf :

#### LaTeX:

`$ pdflatex mydocument.tex`

#### XeTeX:

`$ xelatex mydocument.tex`

#### LuaTeX:

`$ luatex mydocument.tex`

#### Редакторы

*В `Gentoo` пользователи могут выбирать из нескольких редакторов*. 

- - app-editors/kile	  https://kile.sourceforge.io/	 - Редактор на базе KDE , позволяющий пользователям писать код LaTeX, а затем компилировать документ.

app-office/texmaker	  http://www.xm1math.net/texmaker/	  - Редактор на основе Qt , позволяющий пользователю писать код LaTeX, а затем компилировать документ.

- app-office/texstudio	  http://texstudio.sourceforge.net/	- Бесплатный кроссплатформенный редактор LaTeX (ранее texmakerX)

- app-editors/gummi	https://github.com/alexandervdm/gummi	-  Редактор на основе GTK, который позволяет пользователям писать код LaTeX, а затем компилировать документ

- app-editors/gnome-latex	https://wiki.gnome.org/Apps/GNOME-LaTeX	-  Редактор на базе GNOME , который позволяет пользователям писать код LaTeX, а затем компилировать документ

- app-office/lyx  https://www.lyx.org/	WYSIWYM -  редактор на основе Qt , пользователи вводят данные непосредственно в документ LaTeX и могут впоследствии редактировать код LaTeX

- app-editors/texworks	  https://www.tug.org/texworks/	-  Редактор на основе Qt, предложенный UK-TUG, который позволяет пользователям писать код LaTeX, а затем компилировать документ




