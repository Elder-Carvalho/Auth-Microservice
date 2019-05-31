package server

import (
	"context"
	// "encoding/json"
	"errors"
	"fmt"
	// "io/ioutil"
	"database/sql"
	// "golang.org/x/crypto/bcrypt"
	pb "github.com/Elder-Carvalho/auth-microservice/proto/auth"
)

type Repository interface {
	FindUser(data *pb.LoginData) (*pb.User, error)
}

type ServerRepository struct {
	DB *sql.DB
}

func (s *ServerRepository) FindUser(data *pb.LoginData) (*pb.User, error) {
	var (
		id    int64
		name  string
		email string
	)
	err := s.DB.QueryRow("SELECT id, name, email FROM users WHERE email = ?", data.Email).Scan(&id, &name, &email)
	if err != nil {
		return nil, err
	}
	fmt.Println(id)
	return &pb.User{
		Id:    id,
		Name:  name,
		Email: email}, nil
}

type Server struct {
	Repository Repository
}

func (s *Server) Login(ctx context.Context, data *pb.LoginData) (*pb.Response, error) {
	user, err := s.Repository.FindUser(data)
	if err != nil {
		if err == sql.ErrNoRows {
			return nil, errors.New("usuário não encontrado")
		}
		return nil, err
	}
	token := "t981fd3fdf981dsfd09asdfasdgf"
	return &pb.Response{
		Token: token,
		User:  user,
	}, nil
}
