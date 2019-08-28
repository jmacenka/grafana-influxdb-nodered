sudo docker-compose up -d
curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'

echo "Done"
