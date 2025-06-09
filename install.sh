#!/bin/bash

echo "🔧 Instalando entorno Hyprland personalizado..."

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
    qt5-wayland qt6-wayland fish starship git

# Instalar hyprpaper desde AUR si paru está disponible
if command -v paru &> /dev/null; then
    paru -S --noconfirm hyprpaper
else
    echo "ℹ️ Paru no encontrado. Puedes instalar hyprpaper manualmente desde el AUR."
fi

# Copiar configuraciones personalizadas
echo "📁 Configurando entorno..."
mkdir -p ~/.config/{hypr,waybar,hyprpaper,fish}

cp configs/hyprland.conf ~/.config/hypr/
cp configs/waybar_config ~/.config/waybar/config
cp configs/waybar_style.css ~/.config/waybar/style.css
cp configs/hyprpaper.conf ~/.config/hyprpaper/
cp configs/fish_config.fish ~/.config/fish/config.fish
cp configs/starship.toml ~/.config/

# Fondo de pantalla
mkdir -p ~/Pictures/wallpapers
cp assets/default.jpg ~/Pictures/wallpapers/

# Establecer Fish y Starship
echo "🐟 Configurando Fish Shell..."
echo 'set -g theme_nerd_fonts yes' >> ~/.config/fish/config.fish
echo 'starship init fish | source' >> ~/.config/fish/config.fish
echo 'set -U fish_greeting ""' >> ~/.config/fish/config.fish

# Cambiar shell predeterminado a Fish
chsh -s /bin/fish

# Finalización
echo "✅ Instalación completa. Reinicia sesión y selecciona Hyprland en LightDM o ejecuta 'Hyprland' desde TTY."
