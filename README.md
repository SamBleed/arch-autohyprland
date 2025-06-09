
````markdown
# 🚀 Arch-AutoHyprland

Script de instalación automatizada para Arch Linux con el entorno gráfico **Hyprland**, orientado a máquinas físicas o virtuales. Basado en el trabajo de [KrakenEU/Arch-AutoBspwm](https://github.com/KrakenEU/Arch-AutoBspwm), este fork adapta el flujo para un entorno **Wayland moderno, rápido y ligero**.

---

## 🧰 Características

- Instalación automática de:
  - Hyprland y dependencias esenciales
  - Waybar, Wofi, Kitty, Dunst y más
  - Fish Shell + Starship prompt
  - Configuración estética lista para usarse
- Organización limpia de archivos (`configs/`, `scripts/`, `assets/`, `wallpapers/`)
- **Fondo de pantalla predeterminado incluido y aplicado automáticamente**

---

## 📦 Requisitos

- Arch Linux recién instalado (modo UEFI)
- Conexión a internet activa
- Usuario con privilegios sudo

---

## ⚠️ Nota importante

Este script está diseñado para ejecutarse **después de una instalación base de Arch Linux**.

Para una instalación rápida y automatizada del sistema base (particiones, usuario, red, etc.), se recomienda utilizar primero el repositorio de [KrakenEU/Arch-AutoBspwm](https://github.com/KrakenEU/Arch-AutoBspwm), el cual proporciona una base mínima funcional.

> 💡 Este repositorio realiza pasos adicionales antes del uso de `archinstall`, por lo que **se recomienda seguir su flujo** antes de ejecutar este script personalizado.

Una vez completado ese proceso y reiniciado el sistema, puedes clonar este repositorio y ejecutar `install.sh` para transformar el entorno en un sistema moderno con **Hyprland** preconfigurado y listo para usarse.

---

## 🛠️ Instalación

1. Clona el repositorio:

   ```bash
   git clone https://github.com/SamBleed/arch-autohyprland.git
   cd arch-autohyprland
````

2. Haz ejecutable el instalador y ejecútalo:

   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. Reinicia sesión e ingresa a Hyprland 🎉

---

## 🗂️ Estructura del proyecto

```
.
├── install.sh              # Instalador principal
├── README.md               # Este archivo
├── assets/                 # Archivos visuales y fondos alternativos
├── configs/                # Configs individuales (Fish, Hyprland, Waybar, etc.)
├── scripts/                # Scripts adicionales post-instalación (próximamente)
└── wallpapers/             # Fondo de pantalla por defecto (default.jpg)
```

---

## 📸 Captura

![Fondo por defecto](wallpapers/default.jpg)

---

## 🧠 Créditos

Basado en el proyecto de [KrakenEU](https://github.com/KrakenEU/Arch-AutoBspwm).
Adaptado, mantenido y mejorado por [@SamBleed](https://github.com/SamBleed).

---

## 📜 Licencia

Este proyecto está bajo la [licencia MIT](LICENSE). Puedes usarlo, modificarlo y compartirlo libremente.

```
