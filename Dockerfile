FROM jenkins
MAINTAINER Pieter Scheffers <info@pieterscheffers.nl>

USER root
# RUN apt-get update \
#       && apt-get install -y sudo \
#       && rm -rf /var/lib/apt/lists/*
# RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

# USER jenkins

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
