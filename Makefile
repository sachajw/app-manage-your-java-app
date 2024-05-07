IMG_TAG ?= latest
IMG ?= ghcr.io/humanitec-tutorials/manage-your-java-app:$(IMG_TAG)

# Build the manage-your-java-app image
build:
	docker build -t $(IMG) .

# Push the manage-your-java-app image
push:
	docker build -t $(IMG) --push .
