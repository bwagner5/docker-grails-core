FROM debian

RUN apt-get update && apt-get install -y git default-jdk

RUN git clone https://github.com/grails/grails-core.git

ENV GRADLE_OPTS "-Xmx2G -Xms2G -XX:NewSize=512m -XX:MaxNewSize=512m -XX:MaxPermSize=1G"

RUN cd /grails-core && ./gradlew install 

VOLUME /app

WORKDIR /app

COPY entry.sh /
ENTRYPOINT ["/entry.sh"]


