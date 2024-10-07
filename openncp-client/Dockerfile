FROM tomcat:9.0.82-jre11-temurin-jammy

RUN apt-get update && apt-get install unzip -y

ARG OPENNCP_VERSION
ARG MYSQL_HOST
ARG MYSQL_PORT
ARG MYSQL_USERNAME
ARG MYSQL_PASSWORD
ARG JAVA_OPTS
ARG EPSOS_PROPS_PATH
ARG CATALINA_OPTS
WORKDIR /usr/local/tomcat/webapps

COPY lib/* /usr/local/tomcat/lib/
COPY server.xml /usr/local/tomcat/conf/server.xml
COPY context.xml /usr/local/tomcat/conf/context.xml

COPY webapps/openncp-client-connector.war /usr/local/tomcat/webapps/openncp-client-connector.war
COPY webapps/translations-and-mappings-ws.war /usr/local/tomcat/webapps/translations-and-mappings-ws.war

RUN unzip -d translations-and-mappings-ws translations-and-mappings-ws.war
COPY config/translations-and-mappings-ws/application.yml /usr/local/tomcat/webapps/translations-and-mappings-ws/WEB-INF/classes/application.yml
RUN rm translations-and-mappings-ws.war

RUN unzip -d openncp-client-connector openncp-client-connector.war
RUN rm openncp-client-connector.war

CMD ${CATALINA_HOME}/bin/catalina.sh run
