
FROM maven as builder
RUN mkdir -p /opt/app
COPY pom.xml /opr/app/
COPY src /opr/app/
WORKDIR /opr/app/
RUN mvn install

FROM websphere-liberty:webProfile7
COPY --from=builder /target/liberty/wlp/usr/servers/defaultServer /config/
# Install required features if not present
RUN installUtility install --acceptLicense defaultServer
