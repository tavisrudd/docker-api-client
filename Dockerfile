FROM tavisrudd/stage4n
MAINTAINER Tavis Rudd tavis@damnsimple.com
RUN easy_install docker-py && easy_install ipython && echo 'import docker' > init.py
ENTRYPOINT ["ipython", "-i", "init.py"]
