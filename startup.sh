sudo docker-compose up -d
curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'
export $(cat .env | xargs)
echo "All Done, Container is up and running. Visite http://$(hostname -I | cut -d' ' -f1):$NODE_RED_PORT (for backend) or http://$(hostname -I | cut -d' ' -f1):$GRAFANA_PORT (for frontend)"
