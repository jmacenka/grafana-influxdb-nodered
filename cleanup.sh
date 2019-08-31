# Remove everything and release ocupied space

echo "Warning! This will Delete all running containers."
read -p "Are your sure you want to continue? [y/N] " yn
if [ $yn == 'y' ]
then
    sudo docker rm -f $(sudo docker ps -aq)
fi
echo ""
sudo docker volume prune
echo ""
sudo docker network prune
echo ""
echo "Warning! This will Delete all container images."
read -p "Are your sure you want to continue? [y/N] " yn
if [ $yn == 'y' ]
then
    sudo docker rmi -f $(sudo docker images -aq)
fi
echo ""
echo "Done with clean-up-job"