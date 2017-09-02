docker rmi -f tomee-jessica
docker rmi -f mysql-jessica

# cp ../apptest/target/apptest-1.0.war apptest.war
cd tomee
docker build -t tomee-jessica .

cd ../mysql
docker build -t mysql-jessica .
