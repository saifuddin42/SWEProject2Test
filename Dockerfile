FROM tomcat:8.0

MAINTAINER Neel

COPY  /usr/local/tomcat/webapps/

EXPOSE 8888
EXPOSE 8383
EXPOSE 80

CMD ["catalina.sh", "run"]
