#!

echo '
 _____ _                                         _
|_   _| |__   ___  ___  _ __ ___   __ _ _ __ ___| |__   __ _  __ _  ___ _ __
  | | |  _ \ / _ \/ _ \|  _   _ \ / _  |  __/ __|  _ \ / _  |/ _  |/ _ \  _ \
  | | | | | |  __/ (_) | | | | | | (_| | | | (__| | | | (_| | (_| |  __/ | | |
  |_| |_| |_|\___|\___/|_| |_| |_|\__,_|_|  \___|_| |_|\__,_|\__, |\___|_| |_|
                                                             |___/
'

for f in ~/Theomarchagen/install/*.sh; do
	$f
done

sudo pacman -Syu --noconfirm

gum confirm "Would you like to reboot?" && reboot
