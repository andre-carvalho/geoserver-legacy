# GeoServer
GeoServer docker image based on legacy version. It's used to migrate one legacy GeoServer from terrabrasilis1.0 to Docker cluster.

### To build

```
docker build --rm -t terrabrasilis/ams-geoserver:v1.0 .
```

### To RUN

Before run this docker image you should provide the files described on .gitignore and put in configs/ directory into your server. This files contens the sensitive data and will be to map as a volume used by container to mapping as the GeoServer data directory.

```
docker run -d --rm --name "redd-pac" -v $(pwd)/geoserver-app/configs:/data/geoserver/configs -p 8085:8080 -t terrabrasilis/ams-geoserver:v1.0
```

### To test
http://terrabrasilis.dpi.inpe.br/geoservices/redd-pac/ows