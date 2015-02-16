# Add terminus font
xset +fp /usr/share/fonts/local
xset fp rehash

# Add X resources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Bind keys
xbindkeys

# WM name to fix java issues
wmname LG3D

# Start dwm in a loop and log errors
thwmstatus&
while true; do
	dwm 2> ~/.dwm.log
done
