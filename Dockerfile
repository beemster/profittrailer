FROM ubuntu:16.04

MAINTAINER Beam <b-docker-profittrailer@grmbl.net>

RUN apt-get update && apt-get upgrade -y --no-install-recommends
RUN apt-get install -y --no-install-recommends curl unzip default-jdk


ENV PT_DOWNLOAD_URL=https://github.com/taniman/profit-trailer/releases/download/v1.2.6.24/ProfitTrailer.zip
RUN cd /opt && curl -L -O $PT_DOWNLOAD_URL && unzip ProfitTrailer.zip 
ADD run.sh /run.sh

CMD /run.sh

EXPOSE 8081
