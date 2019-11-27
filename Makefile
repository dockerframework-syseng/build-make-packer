CI_REGISTRY     ?= hub.docker.com
IMAGE            = $(CI_REGISTRY)/zerolabssyseng/build-make-paker
VERSION          = 0.0.1

build:
	docker build -t $(IMAGE):$(VERSION) .

push:
	docker push $(IMAGE):$(VERSION)
