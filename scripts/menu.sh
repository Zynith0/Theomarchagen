#!

choice=$(echo -e "Customization\nKeybinds\nUpdate" | rofi -dmenu)

if  [[ $choice == "Customization" ]]; then
	customizationChoice=$(echo -e "Themes\nWallpapers\n" | rofi -dmenu)
fi

if  [[ $choice == "Update" ]]; then
	ghostty -e "gum confirm 'Are you sure you want to continue? (This will update ALL your packages' && sudo pacman -Syu" 
fi

if  [[ $choice == "Keybinds" ]]; then
		printf "SUPER + SHIFT + F = Firefox\nSUPER + SHIFT + W = Refresh waybar\nSUPER + SHIFT + X = Exit to lockscreen\nSUPER + SHIFT + Q = Force kill active window\nSUPER + SHIFT + P = Color picker\nSUPER + SHIFT + M = Theomarchagen menu\nSUPER + ENTER = Terminal\nSUPER + Q = Kill active window\nSUPER + W = File manager\nSUPER + F = Fullscreen active window\nSUPER + V = Emoji Picker\nSUPER + C = App launcher\nSUPER + D = Discord\nSUPER + S = Screenshot\nSUPER + Z = RMPC (music player) volume down\nSUPER + X = RMPC (music player) volume up\nSUPER + P = Pause RMPC (music player)\nSUPER + H = Notification Center\nSUPER + Y = Toggle floating window\n" | rofi -dmenu
fi

if [[ $customizationChoice == "Themes" ]]; then
	theme=$(echo -e "Rose-Pine\nCatppuccin\n" | rofi -dmenu)

	~/.local/share/Theomarchagen/scripts/ThemeSwitcher.sh "$theme"
fi

if [[ $customizationChoice == "Wallpapers" ]]; then
	wallpaper=$(ls ~/.local/share/Theomarchagen/Wallpapers/ | rofi -dmenu)

	swww img ~/.local/share/Theomarchagen/Wallpapers/$wallpaper -t wipe --transition-duration 1.7 --transition-fps 255
fi
