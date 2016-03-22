dockerfile alpine linux with rundeck
====================================

# overview
alpinebaseのrundeckをrundeck-launcherから起動するイメージ

Port EXPOSE 4440 4443

# using datacontainer
datacontainerを利用する倍委はvolumeを利用する
利用する際には上書きされるので起動時に異なるvolumeを推奨

    docker pull busybox:latest
    docker run -it -v /rundeck_data --name rundeck_datacontainer busybox /bin/sh

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
rundeck側でSCMを利用した方がよさげなので対象外のファイルservers/logsとか
volumeの利用は基本的にログのバックアップ、回収とかで利用する

   /rundeck/server/logs
