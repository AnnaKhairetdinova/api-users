-- +goose Up
CREATE TABLE IF NOT EXISTS user_auth
(
    uuid        UUID PRIMARY KEY,
    user_uuid   UUID REFERENCES users (uuid) ON DELETE CASCADE,
    provider    TEXT UNIQUE,
    external_id VARCHAR(255),
    password    VARCHAR(255) NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP NOT NULL
);

-- +goose Down
DROP TABLE IF EXISTS user_auth;
