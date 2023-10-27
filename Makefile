up:
	@sudo mkdir -p ~/data/wordpress
	@sudo mkdir -p ~/data/mariadb
	@sudo docker-compose -f srcs/docker-compose.yml up

down:
	@sudo docker-compose -f srcs/docker-compose.yml down
	@echo "Down"

clean: down
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*
	@if [ $$(sudo docker images -q | wc -l) -gt 0 ]; then sudo docker rmi $$(sudo docker images -q); fi
	@if [ $$(sudo docker volume ls -q | wc -l) -gt 0 ]; then sudo docker volume rm $$(sudo docker volume ls -q); fi
	@sudo docker system prune -f
	@echo "Cleaned"

re: clean up
