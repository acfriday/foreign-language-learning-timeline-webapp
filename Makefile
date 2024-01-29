.DEFAULT_GOAL := build

install:
	#installation commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#black with default formatting
	black *.py

lint:
	#pylint with convention and refactor disabled
	pylint --disable=R,C *.py

build:
	#build container
	docker build -t flask-app .

clean:
	#cleanup directory
	rm -rf __pycache__

all: install format lint build clean
