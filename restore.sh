#!/bin/bash

echo "👉 Installing packages..."
sudo dnf install -y i3 i3status rofi alacritty feh git python3-pywal xinput xsetroot

echo "✅ Packages installed."

echo "👉 Copying configs..."
mkdir -p ~/.config
cp -r i3 i3status rofi alacritty ~/.config/
cp .fehbg ~/.fehbg
cp .bashrc ~/.bashrc

echo "✅ Configs restored."

echo "👉 Enabling wallpaper restore on i3 start..."
if ! grep -q "exec --no-startup-id ~/.fehbg" ~/.config/i3/config; then
    echo 'exec --no-startup-id ~/.fehbg' >> ~/.config/i3/config
fi

echo "✅ Setup complete. You can now reload i3 (Mod+Shift+R) or reboot."
