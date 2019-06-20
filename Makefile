install:
	sudo cp -f octoprint.service /etc/systemd/system/
	sudo systemctl enable octoprint.service
	sudo systemctl restart octoprint.service

remove:
uninstall:
	sudo rm -f octoprint.service /etc/systemd/system/
	sudo systemctl disable octoprint.service

