#!

if [[ $1 == "Rose-Pine" ]]; then
	cp -r -f ~/Theomarchagen/themes/Rose-Pine/hypr ~/.config/
	cp -r -f ~/Theomarchagen/themes/Rose-Pine/ghostty ~/.config/
	cp -r -f ~/Theomarchagen/themes/Rose-Pine/nvim ~/.config/
	cp -r -f ~/Theomarchagen/themes/Rose-Pine/waybar ~/.config/
	swww img ~/Theomarchagen/Pictures/wallpaper-rose-pine.png -t wipe --transition-duration 1.7 --transition-fps 255
	killall waybar && hyprctl dispatch exec waybar
fi

if [[ $1 == "Catppuccin" ]]; then
	cp -r -f ~/Theomarchagen/themes/Catppuccin/hypr ~/.config/
	cp -r -f ~/Theomarchagen/themes/Catppuccin/ghostty ~/.config/
	cp -r -f ~/Theomarchagen/themes/Catppuccin/waybar ~/.config/
	cp -r -f ~/Theomarchagen/themes/Catppuccin/nvim ~/.config/
	swww img ~/Theomarchagen/Pictures/wallpaper-catppuccin.png -t wipe --transition-duration 1.7 --transition-fps 255
	killall waybar && hyprctl dispatch exec waybar
fi
