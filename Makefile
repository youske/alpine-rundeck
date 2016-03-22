IMAGE_NAME := youske/alpine-rundeck

build: Dockerfile
	docker build --file Dockerfile -t ${IMAGE_NAME} .

run: Dockerfile
	docker run -it -p 4440:4440 -p 4443:4443 --rm ${IMAGE_NAME} /bin/sh

push: Dockerfile
	docker push ${IMAGE_NAME}
