echo "Starting the entire project..."
export $(cat .env | xargs)
sudo docker-compose up -d
echo "Creating new database: $INFLUX_DEFAULT_DB"
curl -XPOST 'http://localhost:8086/query' --data-urlencode "q=CREATE DATABASE $INFLUX_DEFAULT_DB"
if [ $NODE_RED_SLIM == "true" ];then
  echo "Using node-red:slim => Won't auto-install influxdb-package in node red but is 800 MB smaler!"
fi
echo "All Done, Container is up and running. Visite http://$(hostname -I | cut -d' ' -f1):$NODE_RED_PORT (for backend) or http://$(hostname -I | cut -d' ' -f1):$GRAFANA_PORT (for frontend)"
