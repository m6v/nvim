#!/usr/bin/env bash

sudo wget -qO - https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz | sudo tar -C /opt -xzf -
sudo ln -s /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable ~/.local/share/nvim/lazy/lazy.nvim

# Шрифты можно скачать с https://github.com/ryanoasis/nerd-fonts/releases
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/UbuntuMono.zip
# Распакуйте архив и переместите файлы .ttf или .otf в директорию ~/.local/share/fonts/ (создайте папку, если её нет)
# Обновите кэш шрифтов в системе командой в терминале: fc-cache -f -v
