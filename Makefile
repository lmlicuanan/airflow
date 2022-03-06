NAME = airflow
REPO = lmlicuanan/$(NAME)

ENV_VARS = \
	-e DEFAULT_USER \
	-e DEFAULT_PASS

docker-build:
	docker build . -t $(REPO)

docker-run:
	docker run --rm --publish 8080:8080 --name=$(NAME) $(ENV_VARS) $(REPO)

list-dags:
	docker run --rm -it --name=$(NAME) $(REPO) airflow dags list

docker-stop:
	docker stop $(NAME)

docker-bash:
		docker run --rm -it --name=$(NAME) $(REPO) bash