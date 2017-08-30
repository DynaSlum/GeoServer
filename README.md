# GeoServer

## Install Git and clone this repo
```
sudo apt-get update
sudo apt-get install git
git clone https://github.com/DynaSlum/GeoServer.git
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

## Add user to docker group (so no sudo is needed)
sudo usermod -a -G docker $USER

## Build and run
```
docker build -t nlesc/geoserver

docker run --name "postgis" -d -t kartoza/postgis:9.4-2.1
docker run --name "geoserver" --link postgis:postgis -p 8080:8080 -d -v ~/Geoserver/mounts/data/:/opt/geoserver/data_dir/ -v /satellite/:/data/satellite -t nlesc/geoserver
```
