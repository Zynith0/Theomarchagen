#!

choice=$(echo -e "Customization\n" | fuzzel -d)

if  [[ $choice == "Customization" ]]; then
	customizationChoice=$(echo -e "Themes\nWallpapers\n" | fuzzel -d)
fi

if [[ $customizationChoice == "Themes" ]]; then
	theme=$(echo -e "Rose-Pine\nCatppuccin\n" | fuzzel -d)

	~/.local/share/Theomarchagen/scripts/ThemeSwitcher.sh "$theme"
fi

if [[ $customizationChoice == "Wallpapers" ]]; then
	wallpaper=$(ls ~/.local/share/Theomarchagen/Wallpapers/ | fuzzel -d)

	swww img ~/.local/share/Theomarchagen/Wallpapers/$wallpaper -t wipe --transition-duration 1.7 --transition-fps 255
fi
