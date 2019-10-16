FROM tomcat:7.0-jre7

LABEL "br.inpe.dpi"="INPE/DPI-TerraBrasilis"
LABEL br.inpe.dpi.terrabrasilis="service"
LABEL version="v1.0"
LABEL author="Andre Carvalho"
LABEL author.email="andre.carvalho@inpe.br"
LABEL description="This service provides an instance of GeoServer to restore an old instance of REDD-PAC GeoService."

ADD tomcat7/setenv.sh /usr/local/tomcat/bin

RUN rm -rf /usr/local/tomcat/webapps/* && \
mkdir -p /data/geoserver-redd-pac/configs && \
mkdir -p /usr/local/tomcat/webapps/redd-pac

COPY geoserver-app/redd-pac /usr/local/tomcat/webapps/redd-pac
COPY geoserver-app/configs /data/geoserver-redd-pac/configs
