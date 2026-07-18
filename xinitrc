#!/usr/bin/env sh

xset -dpms
xset s off
xset s noblank

unclutter -idle 0 -root &

exec chromium \
    https://aura18.ru \
    --kiosk \
    --start-fullscreen \
    --window-position=0,0 \
    --noerrdialogs \
    --disable-translate \
    --disable-features=TranslateUI \
    --no-first-run \
    --disable-infobars \
    --overscroll-history-navigation=0 \
    --disable-pinch \
    --lang=ru
