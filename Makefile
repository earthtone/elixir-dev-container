build:
    @docker build \
        -t codereviewvideos/docker-phoenix .

push:
    @docker push codereviewvideos/docker-phoenix

bp: build push
