APP_EXECUTABLE=hello-dad

.DEFAULT_GOAL := clear

.PHONY:fmt vet build clear
fmt:
	go fmt ./...

vet: fmt
	go vet ./...

build: vet
	go build

clear: build
	rm -f *.blindcoalminer