FROM tomcat:8.0

MAINTAINER Neel

COPY target/SWE645Form-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY "tomcat config"/manager.xml /usr/local/tomcat/conf/Catalina/localhost
COPY "tomcat config"/host-manager.xml /usr/local/tomcat/conf/Catalina/localhost
COPY "tomcat config"/context.xml /usr/local/tomcat/webapps/manager/META-INF

EXPOSE 8888
EXPOSE 8383
EXPOSE 80

CMD ["catalina.sh", "run"]
