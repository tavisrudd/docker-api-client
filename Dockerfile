FROM tavisrudd/ubuntu-base
MAINTAINER Tavis Rudd <tavis@damnsimple.com> https://github.com/tavisrudd
ADD ./screenrc /root/docker-screenrc
RUN apt-get install -y python-pip screen wget ruby ruby-dev && \
    pip install docker-py ipython && \
    gem install docker && \
    wget https://get.docker.io/builds/Linux/x86_64/docker-latest -O /usr/local/bin/docker && \
    chmod +x /usr/local/bin/docker
CMD screen -e^Tt -c /root/docker-screenrc
