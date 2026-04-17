migrate-up:
	goose -dir ./migrations $(GOOSE_DBSTRING) up

migrate-create:
	goose -dir ./migrations create $(name) sql
