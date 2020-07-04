FROM nodered/node-red-docker:slim

COPY ./flows.json /data/flows.json

# Only works with non-slim image (currently approx. 950 MB)
#WORKDIR ~/.node-red
#RUN npm install node-red-contrib-influxdb
