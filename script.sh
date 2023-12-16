mkdir /var/folder{1,2}

cat /vagrant/file_mover.service > /etc/systemd/system/file_mover.service

# Reload all daemons
systemctl daemon-reload

# Run the daemon
systemctl start file_mover.service

# Enable autostart
systemctl enable file_mover.service


# Change directory to cron.d
cd /etc/cron.d

# Every minute during working days log logged in users to the file
echo '* * * * 1-5 root w>>/var/log/logged-in.log' >mycron