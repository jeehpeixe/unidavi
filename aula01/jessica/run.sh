docker rm -f $(docker ps -a -q)

docker run -d --name mysql-jessica \
	-h mysql-jessica \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=exercicio \
	-e MYSQL_DATABASE=exercicio \
	mysql-jessica

sleep 20

docker run -d --name tomee-jessica \
	-h tomee-jessica \
	--link mysql-jessica:mysql-jessica \
        -p 8080:8080 tomee-jessica
