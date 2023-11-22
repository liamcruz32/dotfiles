#! /bin/sh
# gtk3=~/.config/gtk-3.0/settings.ini
# sed -i 's/gtk-theme-name=.*/gtk-theme-name="Materia-dark"/' $gtk3
# sed -i 's/gtk-icon-theme-name=.*/gtk-icon-theme-name="Papirus-Dark"/' $gtk3

# gtk2=~/.gtkrc-2.0
# sed -i 's/gtk-theme-name=.*/gtk-theme-name="Materia-dark"/' $gtk2
# sed -i 's/gtk-icon-theme-name=.*/gtk-icon-theme-name="Papirus-Dark"/' $gtk2
# bash=~/.bashrc
# sed -i 's/base16_.*/base16_material-darker' $bash

polybar=~/.config/polybar/config.ini
sed -i 's/bg_color=.*/bg_color=${colors.materiaalt}/' $polybar
sed -i 's/bg_alt=.*/bg_alt=${colors.materiablack}/' $polybar
sed -i 's/fg_color=.*/fg_color=${colors.arcwhite}/' $polybar
sed -i 's/label-occupied-foreground =.*/label-occupied-foreground = ${colors.fg_color}/' $polybar

rofi=~/.config/rofi/theme.rasi
sed -i 's/blue:.*/blue: #36567D;/' $rofi
sed -i 's/background:.*/background: @bblack;/' $rofi
sed -i 's/foreground:.*/foreground: @white;/' $rofi
sed -i 's/searchbg:.*/searchbg: #666666;/' $rofi

dunst=~/.config/dunst/dunstrc
sed -i 's/background =.*/background = "#444444"/' $dunst
sed -i 's/foreground =.*/foreground = "#ffffff"/' $dunst
sed -i 's/frame_color =.*/frame_color = "#1e1e1e"/' $dunst
