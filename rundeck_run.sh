#!/bin/sh -e

java \
-Xmx1024m \
-d64 \
-Drundeck.jetty.connector.forwarded=true \
-jar /rundeck/rundeck-launcher.jar
