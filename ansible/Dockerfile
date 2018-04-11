# ansible
# in a container
#
# to build:
# e.g., from within the $ERECTOR_HOME directory
# docker build \
#     -t jopecko/ansible \
#     -f `pwd`/Dockerfile .
#
# docker run --rm -it \
#     -v $HOME/.ssh:/root/.ssh:ro \
#     -v $ERECTOR_HOME:/usr/src \
#     jopecko/ansible

FROM debian:stretch

WORKDIR /usr/src

RUN apt-get update \
    && apt-get install -y python python-dev python-pip \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY requirements.txt ./
RUN pip install --user -r requirements.txt --upgrade

RUN pip install ansible

CMD ["/bin/bash"]
