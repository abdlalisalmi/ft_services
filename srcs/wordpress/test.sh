docker stop  $(docker ps -a -q)
docker rm  	 $(docker ps -a -q)
docker rmi  wordpress
docker build -t wordpress .  
docker run -p 443:443 -p 5050:80 -it wordpress