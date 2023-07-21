#! /bin/sh
# gtk3=~/.config/gtk-3.0/settings.ini
# sed -i 's/gtk-theme-name=.*/gtk-theme-name="Arc-Lighter"/' $gtk3
# sed -i 's/gtk-icon-theme-name=.*/gtk-icon-theme-name="Papirus-Light"/' $gtk3

# gtk2=~/.gtkrc-2.0
# sed -i 's/gtk-theme-name=.*/gtk-theme-name="Arc-Lighter"/' $gtk2
# sed -i 's/gtk-icon-theme-name=.*/gtk-icon-theme-name="Papirus-Light"/' $gtk2

polybar=~/.config/polybar/config.ini
sed -i 's/bg_color=.*/bg_color=${colors.white}/' $polybar
sed -i 's/bg_alt=.*/bg_alt=${colors.arcwhite}/' $polybar
sed -i 's/fg_color=.*/fg_color=${colors.black}/' $polybar
sed -i 's/label-occupied-foreground =.*/label-occupied-foreground = ${colors.bg_color}/' $polybar

rofi=~/.config/rofi/theme.rasi
sed -i 's/blue:.*/blue: #389BB2;/' $rofi
sed -i 's/background:.*/background: @white;/' $rofi
sed -i 's/foreground:.*/foreground: @black;/' $rofi
sed -i 's/searchbg:.*/searchbg: @bwhite;/' $rofi

dunst=~/.config/dunst/dunstrc
sed -i 's/background =.*/background = "#E7E8EB"/' $dunst
sed -i 's/foreground =.*/foreground = "#222222"/' $dunst
sed -i 's/frame_color =.*/frame_color = "#E7E8EB"/' $dunst
