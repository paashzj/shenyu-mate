#!/bin/bash

mkdir /opt/sh/shenyu/logs

java -Xmx128M -Xms128M -XX:MaxDirectMemorySize=32M -jar /opt/sh/shenyu/mate/shenyu-mate.jar >/opt/sh/shenyu/logs/shenyu_mate.stdout.log 2>/opt/sh/shenyu/logs/shenyu_mate.stderr.log
tail -f /dev/null