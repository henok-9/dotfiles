swayidle -w timeout 2400 'swaylock -f -c  FFC300 ' \
            timeout 3000 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            before-sleep 'swaylock -f -c FFC998' &
