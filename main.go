package main

import (
	"fmt"
	"log"
	"net/http"
	"github.com/Elder-Carvalho/auth-microservice/db"
	pb "github.com/Elder-Carvalho/auth-microservice/proto/auth"
	"github.com/Elder-Carvalho/auth-microservice/server"
	_ "github.com/go-sql-driver/mysql"
)

func main() {
	conn, err := db.Connect()
	if err != nil {
		log.Fatalln("deu pau ao conectar com o banco: %v", err)
	}
	repository := &server.ServerRepository{DB: conn}
	server := &server.Server{Repository: repository}
	handler := pb.NewAuthServer(server, nil)
	fmt.Println("Server running on port 9000")
	if err := http.ListenAndServe(":9000", handler); err != nil {
		log.Fatalln("Deu pau %v", err)
	}
}
