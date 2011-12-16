#!/bin/sh

CUR=$(gsettings get org.gnome.shell enabled-extensions)
NEW=$(gsettings get org.gnome.shell enabled-extensions | \
    tr \' \" | \
    sed 's!, "message-notifier@shell-extensions.barisione.org"!!g')

sleep 5;

gsettings set org.gnome.shell enabled-extensions "$NEW"
gsettings set org.gnome.shell enabled-extensions "$CUR"
