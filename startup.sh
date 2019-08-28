sudo docker-compose up -d
curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'

echo "All Done, Container is up and running. Visite http://$(hostname -I | cut -d' ' -f1):1880 or http://$(hostname -I | cut -d' ' -f1):3000"
