FROM adoptopenjdk/openjdk11:x86_64-alpine-jre-11.0.22_7

RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M1/bin/apache-tomcat-9.0.0.M1.tar.gz \
    && tar -xzvf apache-tomcat-9.0.0.M1.tar.gz \
    && mv apache-tomcat-9.0.0.M1 /opt/tomcat \
    && rm apache-tomcat-9.0.0.M1.tar.gz \
    && chmod +x /opt/tomcat/bin/*.sh

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
