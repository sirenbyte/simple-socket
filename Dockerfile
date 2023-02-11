FROM adoptopenjdk/openjdk11
MAINTAINER Abzal <abzal.tugan@gmail.com>

ADD ./Java-WebSocket-1.5.3.jar /
ADD ./slf4j-api-1.7.25.jar /
ADD ./ChatServer.java /
EXPOSE 8251
RUN javac -cp .:Java-WebSocket-1.5.3.jar:slf4j-api-1.7.25.jar ChatServer.java
ENTRYPOINT ["java","-cp",".:Java-WebSocket-1.5.3.jar:slf4j-api-1.7.25.jar","ChatServer"]