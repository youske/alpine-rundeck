# alpine linux with rundeck
#

from frolvlad/alpine-oraclejdk8:slim
MAINTAINER youske miyakoshi <youske@gmail.com>

ENV SERVER_URL="http://192.168.99.100:4440" \
    MEMORY_SIZE=1024 \
    RDECK_VERSION=2.6.4 \
    RDECK_BASE=/rundeck \
    PATH=/rundeck/tools/bin:$PATH \
    MANPATH=$MANPATH:$RDECK_BASE/docs/man

RUN wget -O rundeck-launcher.jar "http://dl.bintray.com/rundeck/rundeck-maven/rundeck-launcher-${RDECK_VERSION}.jar" && \
    mkdir -p ${RDECK_BASE} && \
    mv rundeck-launcher.jar ${RDECK_BASE}

RUN java -jar ${RDECK_BASE}/rundeck-launcher.jar --installonly && \
    sed -i "s,^grails\.serverURL.*\$,grails\.serverURL=${SERVER_URL}," ${RDECK_BASE}/server/config/rundeck-config.properties

COPY rundeck_run.sh /rundeck_run.sh

EXPOSE 4440 4443

VOLUME  "/rundeck/var"
#ENTRYPOINT [""]
CMD sh /rundeck_run.sh & tail -f >> /dev/null
