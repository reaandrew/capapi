capnproto:
	apt-get install capnproto
	go get -u -t zombiezen.com/go/capnproto2/...
	capnp compile -I$$GOPATH/src/zombiezen.com/go/capnproto2/std -ogo capapi.capnp

build: 
	go build

test:
	go test -v ./...

install: capnproto
	go get -t ./...


.PHONY: capnproto build test install