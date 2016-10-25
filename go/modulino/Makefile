all:
	modulino
	modulino-test

govet:
		go vet -v

gofmt:
		gofmt -s -w .

lint: govet gofmt
