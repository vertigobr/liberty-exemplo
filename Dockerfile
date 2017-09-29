
FROM maven as builder
RUN mkdir -p /opt/projeto
COPY pom.xml /opr/projeto/
COPY src /opr/projeto/
WORKDIR /opr/projeto/
RUN mvn clean package

#FROM websphere-liberty:webProfile7
#MAINTAINER IBM Java engineering at IBM Cloud
#COPY /target/liberty/wlp/usr/servers/defaultServer /config/
# Install required features if not present
#RUN installUtility install --acceptLicense defaultServer
