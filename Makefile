NAME = airflow
REPO = lmlicuanan/$(NAME)

ENV_VARS = \
	-e DEFAULT_USER \
	-e DEFAULT_PASS

docker-build:
	docker build . -t $(REPO)

docker-run:
	docker run --rm --publish 8080:8080 --name=$(NAME) $(ENV_VARS) $(REPO)

docker-stop:
	docker stop $(NAME)