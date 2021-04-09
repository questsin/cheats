#!/bin/bash

wget -qO - https://packages.confluent.io/deb/5.2/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.confluent.io/deb/5.2 stable main"
sudo apt-get update && sudo apt-get install -y openjdk-8-jdk confluent-community-2.12

echo "172.31.25.122 zoo1" >> /etc/hosts
echo "172.31.21.21 zoo2" >> /etc/hosts
echo "172.31.25.194 zoo3" >> /etc/hosts
echo "1" > /var/lib/zookeeper/myid

#sudo vi /etc/kafka/zookeeper.properties
tickTime=2000
dataDir=/var/lib/zookeeper/
clientPort=2181
initLimit=5
syncLimit=2
server.1=zoo1:2888:3888
server.2=zoo2:2888:3888
server.3=zoo3:2888:3888
autopurge.snapRetainCount=3
autopurge.purgeInterval=24

#sudo vi /etc/kafka/server.properties
broker.id=1
advertised.listeners=zoo1
zookeeper.connect=zoo1:2181

sudo systemctl start confluent-zookeeper
sudo systemctl enable confluent-zookeeper
sudo systemctl status confluent*
sudo systemctl restart confluent-kafka

#folders
/usr/bin/
ls -l /usr/bin | grep kafka
kafka-topics --bootstrap-server localhost:9092 --list
confluent help
confluent version

sudo systemctl start confluent-schema-registry confluent-kafka-rest
sudo systemctl enable confluent-schema-registry confluent-kafka-rest



curl -X POST -H "Content-Type: application/vnd.kafka.json.v2+json" \
  -H "Accept: application/vnd.kafka.v2+json" \
  --data '{"records":[{"key":"message","value":"Hello"},{"key":"message","value":"World"}]}' "http://localhost:8082/topics/rest-test-topic"

#Create a consumer and a consumer instance that will start from the beginning of the topic log.

curl -X POST -H "Content-Type: application/vnd.kafka.v2+json" \
  --data '{"name": "my_consumer_instance", "format": "json", "auto.offset.reset": "earliest"}' \
  http://localhost:8082/consumers/my_json_consumer

#Subscribe the consumer to the topic.

curl -X POST -H "Content-Type: application/vnd.kafka.v2+json" \
  --data '{"topics":["rest-test-topic"]}' \
  http://localhost:8082/consumers/my_json_consumer/instances/my_consumer_instance/subscription

#Consume the messages.

curl -X GET -H "Accept: application/vnd.kafka.json.v2+json" \
  http://localhost:8082/consumers/my_json_consumer/instances/my_consumer_instance/records

#When you are finished using the consumer, close it to clean up.

curl -X DELETE -H "Content-Type: application/vnd.kafka.v2+json" \
  http://localhost:8082/consumers/my_json_consumer/instances/my_consumer_instance

sudo systemctl start confluent-kafka-connect
sudo systemctl enable confluent-kafka-connect
sudo systemctl status confluent-kafka-connect  

sudo vi /etc/ksql/ksql-server.properties


