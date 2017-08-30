# GeoServer

## Install Git
```
sudo apt-get update
sudo apt-get install git
```

## Install docker
```
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
```

## Build and run
```
docker build -t nlesc/geoserver

docker run --name "postgis" -d -t kartoza/postgis:9.4-2.1
docker run --name "geoserver" --link postgis:postgis -p 8080:8080 -d -t nlesc/geoserver
```
