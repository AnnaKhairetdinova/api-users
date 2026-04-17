-- +goose Up
CREATE TABLE IF  NOT EXISTS users
(
    uuid       UUID PRIMARY KEY,
    username   VARCHAR(50),
    email      VARCHAR(255) UNIQUE NOT NULL,
    status     SMALLINT NOT NULL,
    avatar     TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- +goose Down
DROP TABLE IF EXISTS users CASCADE;
