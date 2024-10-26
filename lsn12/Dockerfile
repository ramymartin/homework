FROM ubuntu:14.04
RUN apt update
RUN apt install maven wget git openjdk-6-jdk -y
RUN wget https://archive.apache.org/dist/maven/maven-3/3.2.3/source/apache-maven-3.2.3-src.tar.gz
RUN tar xf ./apache-maven-3.2.3-src.tar.gz -C /opt
RUN ln -s /opt/apache-maven-3.2.3 /opt/maven
ENV PATH='/opt/maven/bin:$PATH'
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git
WORKDIR App42PaaS-Java-MySQL-Sample/WebContent
RUN sed -i 's|192.168.2.175|localhost|g' Config.properties;
WORKDIR /App42PaaS-Java-MySQL-Sample/
RUN mvn --version
RUN mvn package -X
WORKDIR target
RUN cp *.jar /usr/local/webapps/