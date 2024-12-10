# Fake Windows (7/11) Bluescreen during Linux Boot with Plymouth 

This package shows fake windows bluescreen during linux boot and hides password input. 

![laptop with plymouth fake windows bluescreen](./plymouth-windows-fake-bluescreen-example.png)

**NOTE: The theme will not show any boot output or ask you about hard disk passwort input. You just need to type in your password and press enter key in order to unlock the disk and continue booting.** 

For novices it **will not be possible to recognize** if the computer has windows installed is experiencing a "proper" blue screen, or if it has linux installed and is asking for password to decrypt the hard disk.

## Installation

- install plymouth as described here: https://wiki.archlinux.org/title/Plymouth
- ensure you have DejaVu Sans font installed (on archlinux do `pacman -S ttf-dejavu`)
- test if the theme works with `./debug.sh` or `./debug-password.sh` (for password input screen).
- open a shell as root
- copy contents of this folder to `/usr/share/plymouth-themes/fake-windows-bluescreen`
- ensure that your `/etc/mkinitcpio.conf` has `HOOKS=(... plymouth ...)` to load plymouth at boot
- ensure that your `/etc/mkinitcpio.conf` has `FILES=(/usr/share/fonts/TTF/DejaVuSans.ttf /usr/share/fontconfig/conf.avail/57-dejavu-sans.conf /etc/fonts/conf.d/57-dejavu-sans.conf /etc/fonts/fonts.conf )` instead of `FILES=()` so that fonts are available at boot time
- do `mkinitcpio -p linux` to regenerate your boot image
- run `set-default-plymouth-theme fake-windows-bluescreen` to change the default plymouth theme
- reboot and enjoy

