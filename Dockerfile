FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y openjdk-17-jdk
RUN apt-get install -y wget
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz
RUN apt-get install -y tar
RUN tar -xvf apache-tomcat-9.0.87.tar.gz
RUN cd apache-tomcat-9.0.87
WORKDIR apache-tomcat-9.0.87/
#COPY **/Amazon-Core-1.0-SNAPSHOT.jar ./webapps/
EXPOSE 8080
RUN cd ./bin
CMD ["catalina.sh", "run"]
