dockerfile alpine linux with rundeck
====================================

# build & run

    docker --file Dockerfile -t <image tag name> .

    docker run -it -p 4440:4440 --rm <image tag name>
