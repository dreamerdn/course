FROM tomcat:9.0

RUN useradd tomcat

RUN chown -R tomcat:tomcat /usr/local/tomcat/*

COPY target/car_rental.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]