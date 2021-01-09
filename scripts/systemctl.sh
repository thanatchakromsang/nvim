#!/bin/bash

sudo tee /etc/systemd/system/resume-fix-pulseaudio@.service >/dev/null <<EOF
[Unit]
Description=Fix PulseAudio after resume from suspend
After=suspend.target

[Service]
User=%I
Type=oneshot
Environment="XDG_RUNTIME_DIR=/run/user/$UID"
ExecStart=/usr/bin/pasuspender /bin/true

[Install]
WantedBy=suspend.target
EOF

sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now NetworkManager.service
sudo systemctl enable --now docker.service
sudo systemctl enable --now resume-fix-pulseaudio@$USER.service

sudo systemctl --system daemon-reload
