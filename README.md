dockerfile alpine linux with rundeck
====================================

# overview
alpinebaseのrundeckをrundeck-launcherから起動するイメージ

Port EXPOSE 4440 4443

# using datacontainer

    docker pull busybox:latest
    docker run -v /rundeck_data --name rundeck_datacontainer busybox

# run
Dockerhubに登録済みなので hubからイメージを取得する。

    docker pull youske/alpine-rundeck:latest

    docker run -p 4440:4440 --rm youske/alpine-rundeck:latest

# setting

    MEMORY_SIZE
    rundeck起動オプションに設定を入れる
    ducker run  -e MEMORY_SIZE=1024 youske/alpine-rundeck


# build & run

    docker --file Dockerfile -t <image tag name> .

    docker run -it -p 4440:4440 -p 4443:4443 --rm <image tag name>

# etc
   SCMを利用した方がよさげなのでvolumeの利用は基本的にログのバックアップ、回収とかで利用する

   /rundeck/server/logs
 
