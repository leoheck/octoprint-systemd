
install:
	make _install user=${USER}

_install:
	sudo cp -f octoprint.service /etc/systemd/system/
	sudo sed -i "s/pi/$(user)/g" /etc/systemd/system/octoprint.service
	sudo systemctl daemon-reload
	sudo systemctl enable octoprint.service
	sudo systemctl restart octoprint.service

remove:
uninstall:
	sudo rm -f octoprint.service /etc/systemd/system/
	sudo systemctl disable octoprint.service

