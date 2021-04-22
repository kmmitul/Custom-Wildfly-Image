FROM jboss/wildfly:latest
 
COPY ./wildfly/modules/ /opt/jboss/wildfly/modules/
COPY ./wildfly/standalone.xml /opt/jboss/wildfly/standalone/configuration/
COPY ./wildfly/jboss-cli.xml /opt/jboss/wildfly/bin

ADD sample.war /opt/jboss/wildfly/standalone/deployments/

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin213 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0" ]
