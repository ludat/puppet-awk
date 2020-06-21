FROM ubuntu

RUN apt-get -y update && apt-get install gawk 

COPY puppet.awk /puppet.awk

CMD gawk -f /puppet.awk
