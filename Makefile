.PHONY: install install_deps

CONFIG_DIR=$(HOME)/.config/nvim

install_deps:
	sudo apt install fonts-jetbrains-mono

install:
	git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
	mkdir -p $(CONFIG_DIR)
	ln -s $(shell pwd)/init.lua $(CONFIG_DIR)/init.lua
