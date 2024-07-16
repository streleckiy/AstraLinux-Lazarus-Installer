#!/bin/bash
clear

MSGCOLOR='\033[1;32m'
NOCOLOR='\033[0m'
CYAN='\033[0;36m'

printf "${MSGCOLOR}Дмитрий Баринов, СКБ ПСИС. Установщик Lazarus.${NOCOLOR}\n"

printf "\n${CYAN}Обновление пакетов... (update)${NOCOLOR}\n"
sudo apt update

printf "\n${CYAN}Устранение проблем (если они имеются)...${NOCOLOR}\n"
sudo dpkg --configure -a
sudo apt --fix-broken install

printf "\n${CYAN}Очистка от лишних файлов (если они имеются)...${NOCOLOR}\n"
sudo apt-get autoremove

printf "\n${CYAN}Обновление пакетов (upgrade)${NOCOLOR}\n"
sudo apt upgrade

printf "\n${CYAN}Установка fpc-laz...${NOCOLOR}\n"
sudo dpkg -i fpc-laz_3.2.2-210709_amd64.deb

printf "\n${CYAN}Установка fpc-src...${NOCOLOR}\n"
sudo dpkg -i fpc-src_3.2.2-210709_amd64.deb

printf "\n${CYAN}Установка libgtk2...${NOCOLOR}\n"
sudo dpkg -i libgtk2.0-dev_2.24.33-1astra1_amd64.deb

printf "\n${CYAN}Подготовка к установке Lazarus...${NOCOLOR}\n"
sudo apt update
sudo dpkg --configure -a
sudo apt --fix-broken install
sudo apt upgrade

printf "\n${CYAN}Объединение файлов для установки пакета Lazarus...${NOCOLOR}\n"
sudo cat lazarus-project/xaa lazarus-project/xab > lazarus-project/lazarus-project_3.4.0-0_amd64.deb

printf "\n${CYAN}Установка Lazarus...${NOCOLOR}\n"
sudo dpkg -i lazarus-project/lazarus-project_3.4.0-0_amd64.deb
rm lazarus-project/lazarus-project_3.4.0-0_amd64.deb

printf "\n${MSGCOLOR}Если во время выполнения установки Lazarus не произошло ошибок, то все успешно установлено.${NOCOLOR}\n"
printf "\n${CYAN}Теперь Вы можете закрыть окно.${NOCOLOR}"