package db

import (
	"database/sql"
)

func Connect() (*sql.DB, error) {
	db, err := sql.Open("mysql", "root:@tcp(127.0.0.1)/file_manager")
	if err != nil {
		return nil, err
	}
	return db, nil
}
