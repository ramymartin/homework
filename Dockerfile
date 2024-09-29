FROM ubuntu:18.04
RUN apt update
RUN apt install tomcat9 maven default-jdk git -y
ENV CATALINA_HOME /usr/share/tomcat9
ENV PATH $CATALINA_HOME/bin:$PATH
EXPOSE 8080
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR target
RUN cp  hello-1.0.war /var/lib/tomcat9/webapps/
RUN find / -name "catalina.sh"
RUN find / -name "server.xml"
CMD ["catalina.sh", "run"]