FROM alpine:3.13

RUN apk add at bash
RUN mkdir /script
WORKDIR /script
COPY . /script
CMD /script/timer.sh