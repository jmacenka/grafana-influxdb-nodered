# Remove everything and release ocupied space

read -p "Delete all running Containers? y/n\n"
if [ $yn == 'y' ]then
    sudo docker rm -f $(sudo docker ps -aq)
fi
sudo docker volume prune
sudo docker network prune
read -p "Remove all container images? y/n\n"
if [ $yn == 'y' ]then
    sudo docker rmi -f $(sudo docker images -aq)
fi
echo ""
echo "Done with clean-up-job"