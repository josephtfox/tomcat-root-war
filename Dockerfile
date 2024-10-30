#ARG container
FROM docker.io/tomcat:10.0-jdk8-corretto
#RUN groupadd -g 8080 tomcat
#RUN useradd -u 91 -g tomcat tomcat
COPY target/*.war /usr/local/tomcat/webapps/
#RUN chown -R tomcat:tomcat /usr/local/tomcat/webapps/
#USER tomcat
EXPOSE 8080
CMD ["catalina.sh", "run"]
