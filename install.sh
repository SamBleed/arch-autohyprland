#!/bin/bash

echo "🌟 Instalando entorno Hyprland personalizado..."

# Verificar que sea Arch Linux
if ! grep -qi "arch" /etc/os-release; then
    echo "❌ Este script es solo para Arch Linux."
    exit 1
fi

# Actualizar el sistema e instalar paquetes base
echo "📦 Instalando Hyprland y dependencias..."
sudo pacman -Syu --noconfirm hyprland \
    xdg-desktop-portal-hyprland xdg-desktop-portal-wlr \
    kitty waybar wofi grim slurp dunst \
    swaybg wl-clipboard polkit-gnome \
    qt5-wayland qt6-wayland fish starship

# Instalar hyprpaper si se dispone de paru
if command -v paru &> /dev/null; then
    paru -S --noconfirm hyprpaper
fi

# Configurar Hyprland
echo "🛠️ Configurando Hyprland..."
mkdir -p ~/.config
cp -r configs/* ~/.config/

# Fondo de pantalla
echo "🖼️ Configurando fondo de pantalla..."
mkdir -p ~/Pictures/wallpapers
cp -r wallpapers/* ~/Pictures/wallpapers/

# Configurar Fish Shell + Starship
echo "🐟 Configurando Fish Shell y Starship..."
mkdir -p ~/.config/fish
echo 'set -g theme_nerd_fonts yes' >> ~/.config/fish/config.fish
echo 'starship init fish | source' >> ~/.config/fish/config.fish
echo 'set -U fish_greeting ""' >> ~/.config/fish/config.fish

cp configs/starship.toml ~/.config/

# Cambiar la shell por defecto
chsh -s /bin/fish

echo "✅ Instalación completa. Reinicia sesión y selecciona Hyprland en LightDM o ejecuta 'Hyprland' desde TTY."

