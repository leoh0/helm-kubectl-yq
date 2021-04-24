
DOCKER_IMAGE ?= leoh0/helm-kubectl-yq
HELM_KUBECTL_VERSION = "3.5.4"

all: build push

build:
	@docker build \
	  --build-arg HELM_KUBECTL_VERSION=$(HELM_KUBECTL_VERSION) \
	  -t $(DOCKER_IMAGE):$(HELM_KUBECTL_VERSION) .

push:
	@docker push $(DOCKER_IMAGE):$(HELM_KUBECTL_VERSION)
