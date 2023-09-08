# Container image that runs your code
FROM alpine:3.10

# Copies  your code file from your action repository to the filesystem path `/`of the container
COPY entrypoint.sh /entrypoint.sh

# add executable permissions to entrypoint file
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (èntrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]