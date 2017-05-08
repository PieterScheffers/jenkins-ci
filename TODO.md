# TODO

## INIT (Dockerfile)
- install plugins via plugins.txt (https://hub.docker.com/_/jenkins/)
- automatically create admin user via environment variable or config.xml
V give jenkins user access to /var/run/docker.sock

- where to put git(hub) credentials?

## pipeline:
  - start on git commit receive
  - install dependencies
  - run tests
  - build image
  - image to image registry
  - push to production
