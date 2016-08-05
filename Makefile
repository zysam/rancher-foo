##########################
# 镜像相关
##########################
TAG=v0.1
ENV=latest
TYPE=prod
REGISTRY=r-klg.com
NAME=rfoo
IMAGE=$(REGISTRY)/$(NAME):$(ENV)

cp_Dockerfile:
	cp ./docker/${TYPE}/Dockerfile ./Dockerfile

build: cp_Dockerfile
	docker build -t $(IMAGE) .

tag:
	docker tag $(IMAGE) $(REGISTRY)/$(NAME):$(TAG)

push:
	docker push $(IMAGE)

push-Tag:
	docker push $(REGISTRY)/$(NAME):$(TAG)

BTP: build tag push push-Tag
