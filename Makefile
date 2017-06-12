all:




build-dev:
	docker build -t local-ws-nginx-demo -f Dockerfile.dev .
