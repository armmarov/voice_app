IMAGE_NAME = armmarov_voice
CONTAINER_NAME = voice_app

build:
	docker build -t $(IMAGE_NAME) .

rebuild: stop run

stop:
	docker rm -f $(CONTAINER_NAME)

run:
	docker run -d -p 3333:3333 --name $(CONTAINER_NAME) $(IMAGE_NAME)

test:
	npm test

.PHONY: build run rebuild test stop
