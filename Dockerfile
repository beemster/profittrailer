FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y pkg-config apt-utils build-essential autoconf automake libtool libboost-all-dev libgmp-dev libssl-dev libcurl4-openssl-dev git software-properties-common python-software-properties bsdmainutils sudo curl
RUN apt-get install -y default-jdk unzip

MAINTAINER Beam <b-docker-profittrailer@grmbl.net>

ENV PT_DOWNLOAD_URL=https://github.com/taniman/profit-trailer/releases/download/v1.2.6.11/ProfitTrailer.zip
RUN cd /opt && curl -L -O $PT_DOWNLOAD_URL && unzip ProfitTrailer.zip 
ADD run.sh /run.sh

CMD /run.sh

EXPOSE 8081
