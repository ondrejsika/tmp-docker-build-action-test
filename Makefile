IMAGE = ttl.sh/ondrejsika/hello

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
