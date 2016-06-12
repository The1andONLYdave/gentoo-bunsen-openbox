#!/bin/bash
# Autogenerate Menu and add some custom applications
# (c) 2015 The1andONLYdave@gmail.com - github.com/The1andONLYdave
# (license) GPL_v2

# generate Menu with mmaker This is MenuMaker 0.99.7, a 100% Python heuristics-driven menu generator http://menumaker.sourceforge.net (c) 2002-2005 Oleg A. Khlybov <fougas@mail.ru> 
mmaker -t konsole openbox -f

# add custom location for sublime 2
#echo "/usr/local/sublimetext2/sublime_text" >> ~/.config/openbox/menu.xml

# add some pipe menus - little bit modificated for gentoo - credits go to the creators at bunsenlablinux - an amazing distribution if you prefer debian 8 more than gentoo.
#~/.config/openbox/pipemenus.rc

#reload menu in running openbox session, so we can run this script from openbox-autostart.sh
openbox --reconfigure


#bl-filemanger 			thunar
#bl-media-player		vlc
#bl-image-viewer		mirage
#bl-login-background	/usr/share/images/bunsen/login/default.png
#bl-text-editor			geany vorher nun sublime
