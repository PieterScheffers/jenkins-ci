FROM jenkins
MAINTAINER Pieter Scheffers <info@pieterscheffers.nl>

USER root

# Give jenkins user sudo rights without password
# RUN apt-get update \
#       && apt-get install -y sudo \
#       && rm -rf /var/lib/apt/lists/*
# RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

# USER jenkins

# install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh /usr/share/jenkins/plugins.txt

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
