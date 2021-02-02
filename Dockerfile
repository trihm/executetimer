FROM alpine:3.13

RUN apk add at bash
RUN mkdir /script
WORKDIR /script
COPY . /script
RUN chmod +x timer.sh
CMD /script/timer.sh
