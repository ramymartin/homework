FROM tomcat:9.0
EXPOSE 80
RUN apt update
RUN apt install maven git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR target
RUN cp hello-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
