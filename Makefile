init:
	@docker-compose run web mix ecto.create

dev:
	@docker-compose up
