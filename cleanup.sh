# Remove everything and release ocupied space

yn = read -p "Delete all running Containers? y/n"
if [ $yn == 'y' ]
then
    sudo docker rm -f $(sudo docker ps -aq)
fi
sudo docker volume prune
sudo docker network prune
yn = read -p "Remove all container images? y/n"
if [ $yn == 'y' ]
then
    sudo docker rmi -f $(sudo docker images -aq)
fi
echo ""
echo "Done with clean-up-job"