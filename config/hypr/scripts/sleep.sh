swayidle -w timeout 600 'swaylock -f -c  FFC300 ' \
            timeout 1800 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            before-sleep 'swaylock -f -c 000000' &
