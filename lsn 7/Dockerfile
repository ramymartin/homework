FROM alpine
RUN apt update
RUN apt install maven git -y
RUN git clone https://github.com/efsavage/hello-world-war.git
WORKDIR hello-world-war
RUN mvn package
WORKDIR target
RUN cp hello-world-war-1.0.0.war /usr/local/tomcat/webapps/
