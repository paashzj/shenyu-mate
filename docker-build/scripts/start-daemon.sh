#!/bin/bash

mkdir -p $SHENYU_HOME/logs

java -Xmx128M -Xms128M -XX:MaxDirectMemorySize=32M -jar $SHENYU_HOME/mate/shenyu-mate.jar >>$SHENYU_HOME/logs/shenyu_mate.stdout.log 2>>$SHENYU_HOME/logs/shenyu_mate.stderr.log
