IMAGE = ttl.sh/ondrejsika/hello

all: build push

build:
	docker buildx build -t ${IMAGE} .

push:
	docker push ${IMAGE}
