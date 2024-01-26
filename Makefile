install:
	#Commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#Formatting
	black *.py
lint:
	#Pylint
	pylint --disable=R,C *.py
build:
	#build container
	docker build -t flask-app .
run:
	#run container
	docker run -p 127.0.0.1:8080:8080 flask-app

all: install format build run lint
