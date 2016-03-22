#!/bin/sh -e

java \
 -Xmx${MEMORY_SIZE}m \
 -d64 \
 -Drundeck.jetty.connector.forwarded=true \
 -jar /rundeck/rundeck-launcher.jar
