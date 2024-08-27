.PHONY: run
clean:
	docker compose down --volumes --remove-orphans
build:
	docker compose up --build
down:
	docker compose down
up:
	docker compose up
makemigrations:
	docker compose run backend python manage.py makemigrations
migrate:
	docker compose run backend python manage.py migrate
