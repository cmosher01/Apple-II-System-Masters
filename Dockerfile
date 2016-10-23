FROM phusion/passenger-customizable

MAINTAINER Christopher A. Mosher <cmosher01@gmail.com>

RUN \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" --no-install-recommends && \
    apt-get autoremove -y && \
    apt-get clean



RUN \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" --no-install-recommends \
        automake autoconf autopoint \
    && \
    apt-get autoremove -y && \
    apt-get clean



RUN chmod -R a+rwX /usr/local
RUN ln -s /home/app/apple2sysmas /var/www/html/apple2sysmas
RUN rm -f /etc/service/nginx/down



USER app
ENV HOME /home/app
WORKDIR $HOME



RUN mkdir apple2sysmas
WORKDIR apple2sysmas



USER root

COPY bootstrap configure.ac Makefile.am ./

COPY NEWS README* AUTHORS ChangeLog COPYING* ./

COPY ./dos310 ./dos310
COPY ./dos320 ./dos320
COPY ./dos321 ./dos321
COPY ./dos330 ./dos330
COPY ./dos331 ./dos331
COPY ./dos332 ./dos332
COPY index.html ./
RUN chown -R app: *

USER app



COPY bld.sh ./

RUN ./bld.sh ./bootstrap
RUN ./bld.sh ./configure
RUN ./bld.sh make
RUN ./bld.sh make dist
RUN ./bld.sh make distcheck
RUN ./bld.sh make install
RUN ./bld.sh make installcheck

RUN ln -s apple2sysmas-*.tar.gz apple2sysmas.tar.gz

USER root
