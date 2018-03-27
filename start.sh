docker run --name "geoserver" --link postgis:postgis -p 9000:8080 -d -v //C/Users/Maarten/workspace/GeoServer/mounts/data/:/opt/geoserver/data_dir/ -t nlesc/geoserver
