#!/bin/bash


<< task
Deploy a Django app
and handle the code for errors
task

code_clone() {
	echo "cloning the Django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
	echo "installing dependencies"
	sudo apt-get install docker.io nginx -y
}

required_restarts() {
	sudo chown $USER /var/run/docker.sock << comment
to give permission of this file for the current user
comment
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
	deploy build -t notes-app .
        docker run -d -p 8000:8000 notes-app:latest
}

echo "********* DEPLOYMENT STARTED ************"

if ! code_clone; then
	echo "the code directory already exists"
	cd django-notes-app
fi

if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "system fault idntified"
	exit 1
fi

if ! deploy; then
	echo "Deployment failed, mailing the admin"
	# sendmail
	exit 1
fi

echo "************ DEPLOYMENT DONE *************"
