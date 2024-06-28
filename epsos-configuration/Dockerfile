FROM alpine:latest
# Install rsync
RUN apk add --no-cache rsync

COPY . /epsos-configuration
CMD ["sh", "-c", "ls -l /epsos-configuration"]