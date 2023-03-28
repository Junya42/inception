all:
	mkdir -p /home/junya/data/wordpress
	mkdir -p /home/junya/data/mariadb
	sudo docker-compose -f ./srcs/docker-compose.yml  up -d --build
stop:
	sudo docker-compose -f ./srcs/docker-compose.yml down 

erase:
	sudo rm -rf /home/junya/data/wordpress/*
	sudo rm -rf /home/junya/data/mariadb/*


fclean: stop erase
	sudo docker system prune -af
	sudo docker volume rm -f $$(docker volume ls -q)

re: stop all
