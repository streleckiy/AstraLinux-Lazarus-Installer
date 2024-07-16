#!/bin/bash
clear

MSGCOLOR='\033[1;32m'
NOCOLOR='\033[0m'
CYAN='\033[0;36m'

printf "${MSGCOLOR}Дмитрий Баринов, СКБ ПСИС. Установщик Lazarus.${NOCOLOR}\n"
printf "\n${CYAN}Подготовка к удалению Lazarus...${NOCOLOR}\n"
sudo apt update
sudo dpkg --configure -a
sudo apt --fix-broken install
sudo apt upgrade

printf "\n${CYAN}Команда: sudo apt-get purge fpc-laz${NOCOLOR}\n"
sudo apt-get purge fpc-laz

printf "\n${CYAN}Команда: sudo apt-get purge fpc-src${NOCOLOR}\n"
sudo apt-get purge fpc-src

printf "\n${CYAN}Команда: sudo apt-get purge libgtk2.0-dev${NOCOLOR}\n"
sudo apt-get purge libgtk2.0-dev

printf "\n${CYAN}Команда: sudo apt-get purge lazarus-project${NOCOLOR}\n"
sudo apt-get purge lazarus-project

printf "\n${CYAN}Комадна: sudo apt-get autoremove${NOCOLOR}\n"
sudo apt-get autoremove

printf "\n${MSGCOLOR}Если во время выполнения скрипта не произошло ошибок, то все успешно удалено.${NOCOLOR}"
printf "\n${CYAN}Теперь Вы можете закрыть окно.${NOCOLOR}"