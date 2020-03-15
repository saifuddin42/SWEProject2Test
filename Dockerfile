FROM tomcat:8.0

MAINTAINER Neel

COPY target/SWE645Form-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

EXPOSE 8888
EXPOSE 8383
EXPOSE 80

CMD ["catalina.sh", "run"]
