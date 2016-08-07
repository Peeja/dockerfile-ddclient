FROM ubuntu:14.04
MAINTAINER Peter Jaros <peter.a.jaros@gmail.com>

RUN apt-get update && apt-get install -y ddclient
COPY ./ddclient.sh .
RUN chmod +x ./ddclient.sh
ENTRYPOINT ["./ddclient.sh"]
