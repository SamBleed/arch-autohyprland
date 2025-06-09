#!/bin/bash

echo "🌟 Instalando entorno Hyprland personalizado..."

if ! grep -qi "arch" /etc/os-release; then
    echo "❌ Este script es solo para Arch Linux."
    exit 1
fi

echo "📦 Instalando Hyprland y paquetes necesarios..."
sudo pacman -Syu --noconfirm hyprland \
    xdg-desktop-portal-hyprland xdg-desktop-portal-wlr \
    kitty waybar wofi grim slurp dunst \
    swaybg wl-clipboard polkit-gnome \
    qt5-wayland qt6-wayland fish starship

if command -v paru &> /dev/null; then
    paru -S --noconfirm hyprpaper
fi

echo "🛠️ Configurando Hyprland..."
mkdir -p ~/.config
cp -r config/* ~/.config/

echo "🖼️ Configurando fondo de pantalla..."
mkdir -p ~/Pictures/wallpapers
cp -r wallpapers/* ~/Pictures/wallpapers/

echo "🐟 Configurando Fish Shell y Starship..."
mkdir -p ~/.config/fish
echo 'set -g theme_nerd_fonts yes' >> ~/.config/fish/config.fish
echo 'starship init fish | source' >> ~/.config/fish/config.fish
echo 'set -U fish_greeting ""' >> ~/.config/fish/config.fish

mkdir -p ~/.config
cp config/starship.toml ~/.config/

chsh -s /bin/fish

echo "✅ Instalación completa. Reinicia sesión y selecciona Hyprland en LightDM o ejecuta 'Hyprland' desde TTY."
