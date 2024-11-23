build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose down

test:
	docker-compose run --rm app go test -v ./...

swagger-gen:
	docker-compose run --rm app swag init


swagger-up: # Swagger環境を立ち上げる
	docker-compose up -d swagger-editor swagger-ui
	open http://localhost:8002

swagger-stop: # Swagger環境を停止する
	docker-compose stop swagger-editor swagger-ui

swagger-gen: # GoコードからSwaggerドキュメントを生成
	docker-compose run --rm app swag init --parseDependency --parseInternal --output docs