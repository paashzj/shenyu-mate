#
# Build stage
#
FROM ttbb/compile:jdk11-git-mvn AS build
COPY . /opt/sh/compile
WORKDIR /opt/sh/compile
RUN mvn -B clean package


FROM ttbb/shenyu:nake

LABEL maintainer="shoothzj@gmail.com"

COPY --from=build /opt/sh/compile/shenyu-mate/target/shenyu-mate-0.0.1.jar /opt/sh/shenyu/mate/shenyu-mate.jar

COPY docker-build /opt/sh/shenyu/mate

WORKDIR /opt/sh/shenyu

CMD ["/usr/bin/dumb-init", "bash", "-vx","/opt/sh/shenyu/mate/scripts/start.sh"]
