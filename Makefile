.DEFAULT_GOAL := build

.PHONY:fmt vet build print 	clean

all: fmt vet build print

fmt:
	go fmt ./...

vet: fmt
	go vet ./...

build: vet
	go build -o hello-dad.hd

print: $(wildcard *.hd)
	ls -l $?

clean:
	rm -f *.hd