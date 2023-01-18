BINARY_NAME=gowie

build:
	GOARCH=amd64 GOOS=linux go build -o ${BINARY_NAME} src/main.go

run:
	./${BINARY_NAME}

build_and_run: build run

clean:
	go clean
	rm ${BINARY_NAME}