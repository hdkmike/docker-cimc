# docker-cimc

## About

Download and run the Java KVM inside a docker container with VNC. 

Container is based on [baseimage-gui](https://github.com/jlesage/docker-baseimage-gui) by [jlesage](https://github.com/jlesage)

## Usage

See the docker-compose file or use this command:
```
docker run -d \
  -p 5800:5800 \
  -p 5900:5900 \
  -e CIMC_HOST=1.2.3.4 \
  -e CIMC_USER=admin \
  -e CIMC_PASSWORD=password \
  <container_name>
```
The web interface is on port 5800 and the VNC server is directly on 5900.

## Configuration

| Variable       | Description                                  | Required |
|----------------|----------------------------------------------|----------|
|`CIMC_HOST`| Host for your CIMC instance. HTTPS is always used. | Yes |
|`CIMC_USER`| CIMC username | Yes |
|`CIMC_PASSWORD`| CIMC password | Yes |
|`CIMC_PORT`| CIMC port (443 by default) | No |
