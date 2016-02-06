CONTAINER = tvaughan/shout
VERSION = 0.53.0

.PHONY = all build run clean

all: build

.built: Dockerfile
	@docker build -t $(CONTAINER):$(VERSION) .
	@touch $@

build: .built

run: build shout.yml
	@docker-compose -f shout.yml run shout

clean:
	@rm -f .built
