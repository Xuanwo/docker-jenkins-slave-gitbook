FROM jenkins/ssh-slave
LABEL maintainer="Xuanwo <xuanwo@yunify.com>"

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update \
    && apt-get install --no-install-recommends -y nodejs npm \
    && rm -rf /var/lib/apt/lists/*

RUN npm install gitbook-cli -g

ENTRYPOINT ["setup-sshd"]
