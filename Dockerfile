FROM alpine:3.7

EXPOSE 8554
EXPOSE 8000
EXPOSE 8001

RUN apk add --no-cache wget
RUN wget -O /tmp/rtsp-simple-server_v0.9.1_linux_amd64.tar.gz https://github.com/aler9/rtsp-simple-server/releases/download/v0.9.1/rtsp-simple-server_v0.9.1_linux_amd64.tar.gz
RUN tar xzfv /tmp/rtsp-simple-server_v0.9.1_linux_amd64.tar.gz -C /tmp 
RUN mv /tmp/rtsp-simple-server /usr/local/bin/
ENTRYPOINT ["rtsp-simple-server"]