# Директория с разделенным на несколько файлов пакетом lazarus-project.

Данная директория содержит разделенный на две части файл "lazarus-project_3.4.0-0_amd64.deb".
Разделение происходит благодаря выполнению команды (в этой директории):
> **split -b 90MB lazarus-project_3.4.0-0_amd64.deb**
Если количество файлов после разделения изменилось, то измените в файле строку setup.sh, которая объединяет файлы в один. Ее примерный вид:
> **sudo cat lazarus-project/xaa ... > lazarus-project/lazarus...**