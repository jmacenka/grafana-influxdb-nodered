# Remove everything and release ocupied space

sudo docker rm -f $(sudo docker ps -aq)
sudo docker volume prune
sudo docker network prune
sudo docker rmi -f $(sudo docker images -aq)

echo "Done with clean-up-job"