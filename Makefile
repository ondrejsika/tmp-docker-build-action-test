IMAGE = ghcr.io/ondrejsika/tmp-docker-build-action-test/hello

all: build push

build:
	docker buildx build -t ${IMAGE} .

push:
	docker push ${IMAGE}
