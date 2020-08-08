# NGINX WEB SERVER IMAGE
FROM alpine:latest
# NGINX version
ENV PAYARA_MAJOR_VERSION 5
ENV PAYARA_MINOR_VERSION 201

WORKDIR .

ENV TOMCAT_MAJOR=9 \
    TOMCAT_VERSION=9.0.34 \
    TOMCAT_HOME=/opt/tomcat \
    CATALINA_HOME=/opt/tomcat \
    CATALINA_OUT=/dev/null 
#    MYSQL_JDBC_VERSION=5.1.39 \
#    POSTGRESQL_JDBC_VERSION=9.4.1207

RUN mkdir -p /opt \
 && apk upgrade --update \
 && apk add --update openjdk8-jre curl \
 && curl -jksSL -o /tmp/apache-tomcat.tar.gz http://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz \
 && tar -C /opt -xvzf /tmp/apache-tomcat.tar.gz \
 && ln -s /opt/apache-tomcat-${TOMCAT_VERSION} ${TOMCAT_HOME} \
 && apk del curl \
 && rm -rf /tmp/* /var/cache/apk/*
# && rm -rf ${TOMCAT_HOME}/webapps/* \
#    curl -jksSL -o /tmp/mysql-connector-java.tar.gz http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-${MYSQL_JDBC_VERSION}.tar.gz && \
#    tar -C /tmp -xvzf /tmp/mysql-connector-java.tar.gz && \
#    cp /tmp/mysql-connector-java-${MYSQL_JDBC_VERSION}/mysql-connector-java-${MYSQL_JDBC_VERSION}-bin.jar /opt/tomcat/lib/ && \
#    curl -jksSL -o /opt/tomcat/lib/postgresql-${POSTGRESQL_JDBC_VERSION}.jar http://jdbc.postgresql.org/download/postgresql-${POSTGRESQL_JDBC_VERSION}.jar && \

EXPOSE 8080

CMD [ "/opt/tomcat/bin/catalina.sh", "run" ]

