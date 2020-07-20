# Streams simulation

## Description

Streams simulation allows on simulating streams in order to verify Inference workloads on stream.

Streams will be available under following addresses:
* rtsp://\<ip\>/stream1
* rtsp://\<ip\>/stream2
* ...
* rtsp://\<ip\>/streamN

Number of streams is configurable in `docker-compose.yml`

Each of the streams will randomly select one of the files from media folder, which is mounted to container.

## Configuration

* Place media files into directory `./media`
```
# ls media 
119_d29029.mp4
```
Name of this directory can be changed in `` via:
```
volumes:
    - "./media:/mediafiles:ro"
```

* Set number of streams in `docker-compose.yml`
```
STREAMS=1
```

## Run
```
# docker-compose up
```
