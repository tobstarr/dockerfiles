default:
	docker build . -t quay.io/tobstarr/toolbox:latest
	docker push quay.io/tobstarr/toolbox:latest

alpine:
	cat Dockerfile.alpine | docker build -t quay.io/tobstarr/toolbox:alpine -
	docker push quay.io/tobstarr/toolbox:alpine
