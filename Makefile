IMG_TAG ?= latest
IMG ?= ghcr.io/humanitec-tutorials/manage-your-java-app:$(IMG_TAG)

# Excecute the Maven build
mvn:
	mvn clean install

# Build the manage-your-java-app image
build: mvn
	docker build -t $(IMG) .

# Push the manage-your-java-app image
push: mvn
	docker build -t $(IMG) --push .
