build: app.py requirements.txt
	docker build -t bethel_demo .

run: build
	docker run -ti --rm -p 5000:80 --env DEBUG=true bethel_demo

run-prod: build
	docker run -ti --rm -p 5000:80 --env DEBUG=false bethel_demo

# not used, but required if you want IDE symbols for debugging and intellisense
build-local:
	python -m venv venv
	source venv/bin/activate
	pip install -r requirements.txt
