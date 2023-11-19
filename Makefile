# Load environment variables from .env file
include .env
export

IMAGE_NAME ?= my-fastapi-app
CHART_NAME ?= my-fastapi-app
CHART_VERSION ?= 0.1.0
RELEASE_NAME ?= my-fastapi-release

.PHONY: all build package deploy

all: build package deploy

build:
	docker build -t $(IMAGE_NAME) .

package:
	helm package helm/$(CHART_NAME)

deploy:
	helm install $(RELEASE_NAME) $(CHART_NAME)-$(CHART_VERSION).tgz
