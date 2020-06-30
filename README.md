# Nginx with RTMP module

## Build and use

```bash
docker build . -t <user>/nginx-rtmp
docker run --rm -d -p 1935:1935 -p 80:80 <user>/nginx-rtmp
```
To mount a video streamed via http and run the container
```bash
docker run --rm -d -p 1935:1935 -p 80:80 -v <video folder>:/usr/local/nginx/html <user>/nginx-rtmp
```
The video can be streamed by VLC or other players via `http://<host>/<video folder>/<video>`

## Description

This is just a dockerfile for building docker image with basic nginx functionality and rtmp service.
This docker is for demo use only, so this may not be updated.
