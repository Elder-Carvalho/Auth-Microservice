build:
	protoc -I. --twirp_out=. --go_out=. ./proto/auth/auth.proto
	sudo docker build -t auth-microservice .
run:
	sudo docker run -p 9000:9000 auth-microservice .