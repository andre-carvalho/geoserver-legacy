FROM tomcat:9.0-jre11

ARG VERSION="1.0.0"

LABEL "br.inpe.dpi"="INPE/DPI-TerraBrasilis"
LABEL br.inpe.dpi.terrabrasilis="service"
LABEL version=${VERSION}
LABEL author="Andre Carvalho"
LABEL author.email="andre.carvalho@inpe.br"
LABEL description="This service provides an instance of GeoServer to AMS geoservices."

ADD tomcat/setenv.sh /usr/local/tomcat/bin

RUN rm -rf /usr/local/tomcat/webapps/* && \
mkdir -p /data/geoserver/configs && \
mkdir -p /usr/local/tomcat/webapps/geoams && \
rm -f /etc/localtime && \
ln -s /usr/share/zoneinfo/Brazil/East /etc/localtime

COPY geoserver-app/app /usr/local/tomcat/webapps/geoams

VOLUME /data/geoserver/configs