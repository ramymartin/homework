FROM tomcat:9.0
EXPOSE 80
RUN apt update
RUN apt install maven git -y
RUN git clone https://github.com/efsavage/hello-world-war.git
WORKDIR hello-world-war
RUN mvn package
WORKDIR target
RUN cp hello-world.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
