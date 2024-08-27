.PHONY: run
down:
	docker compose down --volumes --remove-orphans
up:
	docker compose up --build
makemigrations:
	docker compose run backend python manage.py makemigrations
migrate:
	docker compose run backend python manage.py migrate
