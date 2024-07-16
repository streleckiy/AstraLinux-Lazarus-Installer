# AstraLinux Lazarus Installer
Содержит файлы и скрипты для автоматической установки и удаления Lazarus для AstraLinux.
## О том, на что стоит обратить внимание.
> * **НЕ ПРЕКРАЩАЙТЕ РАБОТУ СКРИПТА SETUP.SH ДО ТЕХ ПОР, ПОКА ОН НЕ ВЫПОЛНИТ СВОИ ЗАДАЧИ.** 
> * Совместимо только с 64-разрядной ОС.
> * Для обхода лимита по размеру файлов GitHub, файл пакета lazarus-project был разделен на несколько частей *(директория lazarus-project)*.
> * Пакет "libgtk2*" был скачан для того, чтобы актуальность скрипта была дольше.
## О том, как установить.
> * Клонируйте данный репозиторий в отдельную папку.
> * Запустите bash-скрипт **setup.sh**.
> * Соглашайтесь на запросы (если встретятся). 
> * **Lazarus установлен.**

## О возможных проблемах.
> Если при работе **setup.sh**, скрипту так и не удалось установить Lazarus, или работа скрипта была прекращена *(например, Вы закрыли окно или нажали Ctrl+Z)*, рекомендуется воспользоваться скриптом **uninstall.sh** (см. ниже).

## О скрипте uninstall.sh.
> Данный скрипт удаляет все установленные пакеты для Lazarus. Он используется для того, чтобы **install.sh** установил Lazarus.