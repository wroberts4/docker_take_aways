FROM openjdk:17-slim
RUN apt-get -y update
RUN apt-get -y install wget
RUN mkdir /server
WORKDIR /server
RUN wget -O minecraft_server.1.18.2.jar https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar
RUN echo "eula=true" > eula.txt
