FROM ubuntu:15.10

RUN apt-get update; \
    apt-get install -y xzdec texlive-full texlive-lang-korean; \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;

RUN rm /usr/bin/python; \
    apt-get update; \
    apt-get install -y python3 python3-pip; \
    pip3 install sphinx; \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;

WORKDIR /var/code
