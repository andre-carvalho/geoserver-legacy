# GeoServer
GeoServer docker image based on legacy version. It's used to migrate one legacy GeoServer from terrabrasilis1.0 to Docker cluster.

### To build

```
docker build --rm -t terrabrasilis/geoserver-redd-pac:v1.0 .
```

### To RUN
```
docker run -d --rm --name "redd-pac" -p 8085:8080 -t terrabrasilis/geoserver-redd-pac:v1.0
```
