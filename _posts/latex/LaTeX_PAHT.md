Если `pdflatex` установлен, но система его не находит, значит нарушена цепочка: **установка → путь в `$PATH` → доступность команды**. 

Разберём как это исправить.

## 1. Найдите, где реально лежит `pdflatex`

Выполните поиск по файловой системе:

```bash
sudo find / -name pdflatex 2>/dev/null
```
Возможные пути (в зависимости от способа установки):

- `/usr/local/bin/pdflatex`
- `/usr/local/texlive/YYYY/bin/amd64-freebsd/pdflatex` (где `YYYY` — год версии)
- `/opt/texlive/bin/x86_64-freebsd/pdflatex`

Запомните найденный путь.

## 2. Проверьте текущий `$PATH`

Выведите список директорий, где система ищет команды:

```bash
echo $PATH
```
Если в выводе **нет** директории с `pdflatex` — система не знает, где его искать.

## 3. Добавьте путь в `$PATH` (временное решение)

Предположим, `pdflatex` найден в `/usr/local/texlive/2025/bin/amd64-freebsd/`. 

Добавьте его в `$PATH` текущей сессии:

```bash
export PATH="/usr/local/texlive/2025/bin/amd64-freebsd:$PATH"
```
Проверьте, заработало ли:
```bash
pdflatex --version
```

## 4. Закрепите путь навсегда

Чтобы путь сохранялся после перезагрузки, добавьте его в конфигурационный файл оболочки.

**Для bash** (стандартная оболочка FreeBSD):  

Отредактируйте `~/.bashrc`:

```bash
echo 'export PATH="/usr/local/texlive/2025/bin/amd64-freebsd:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

**Для zsh** (если используете): 

Отредактируйте `~/.zshrc`:

```bash
echo 'export PATH="/usr/local/texlive/2025/bin/amd64-freebsd:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## 5. Проверьте символические ссылки

Иногда `pdflatex` есть, но отсутствует в `/usr/local/bin`. 

Создайте ссылку вручную:

```bash
sudo ln -s /путь/к/вашему/pdflatex /usr/local/bin/pdflatex
```
Пример:

```bash
sudo ln -s /usr/local/texlive/2025/bin/amd64-freebsd/pdflatex /usr/local/bin/pdflatex
```

## 6. Перепроверьте установку TeX Live

Если `find` не нашёл `pdflatex`, возможно, установка прошла с ошибками. 

Переустановите:

```bash
sudo pkg delete texlive-base
sudo pkg install texlive-base
```

## 7. Диагностика: проверьте права и зависимости

Убедитесь, что:
- Файл `pdflatex` исполняемый:  
  ```bash
  ls -l /путь/к/pdflatex
  ```
  В правах должны быть `x` (например, `-rwxr-xr-x`).
  
- Нет отсутствующих библиотек (редко, но бывает): 

  ```bash
  ldd /путь/к/pdflatex | grep "not found"
  ```
  Если есть ошибки — переустановите TeX Live.


## Итог

1. Найдите реальный путь к `pdflatex` через `find`.  
2. Добавьте этот путь в `$PATH` (в `~/.bashrc` или `~/.zshrc`).  
3. Создайте символическую ссылку в `/usr/local/bin`, если нужно.  
4. Перезапустите терминал и проверьте: `pdflatex --version`.  

После этих шагов команда должна работать.
