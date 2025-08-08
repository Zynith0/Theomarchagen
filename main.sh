#!

cp -r ~/Theomarchagen ~/.local/share/

echo '
  ________                                         __
 /_  __/ /_  ___  ____  ____ ___  ____ ___________/ /_  ____ _____ ____  ____
  / / / __ \/ _ \/ __ \/ __ `__ \/ __ `/ ___/ ___/ __ \/ __ `/ __ `/ _ \/ __ \
 / / / / / /  __/ /_/ / / / / / / /_/ / /  / /__/ / / / /_/ / /_/ /  __/ / / /
/_/ /_/ /_/\___/\____/_/ /_/ /_/\__,_/_/   \___/_/ /_/\__,_/\__, /\___/_/ /_/
                                                           /____/
'

for f in ~/.local/share/Theomarchagen/install/*.sh; do
	$f
done

sudo pacman -Syu --noconfirm

sudo cp ~/.local/share/Theomarchagen/theomarchagen /usr/bin

gum confirm "Would you like to reboot?" && reboot
