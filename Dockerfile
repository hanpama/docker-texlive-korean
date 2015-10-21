FROM ubuntu:14.04

RUN apt-get update; \
    apt-get install -y xzdec texlive texlive-xetex texlive-luatex \
    texlive-lang-cjk texlive-lang-korean texlive-full; \
    tlmgr --usermode init-usertree; \
    tlmgr repository add http://ftp.ktug.org/KTUG/texlive/tlnet ktug; \
    tlmgr pinning add ktug "*"; \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;

