#!/bin/bash

echo "🚀 Ejecutando postinstalación..."

# Crear carpetas comunes del usuario si no existen
mkdir -p ~/Documents ~/Downloads ~/Pictures ~/Videos ~/Music

# Establecer fondo de pantalla con hyprpaper
if command -v hyprpaper &> /dev/null; then
    echo "🖼️ Estableciendo fondo de pantalla con hyprpaper..."
    hyprpaper &
else
    echo "⚠️ hyprpaper no está instalado. Fondo de pantalla no configurado automáticamente."
fi

# Mensaje final
echo "✅ Postinstalación completada. Disfruta tu nuevo entorno con Hyprland."
