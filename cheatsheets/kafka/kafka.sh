bin/kafka-topics.sh
java -version = java8
cat ~/.bash_profile
zookeeper-server-start config/zookeeper.properties
##port 2181 for zookeeper
##config/server.properties
##might want to change data dir for both
kafka-server-start config/server.properties


/kafka-topics.sh --zookeeper $ZK_HOSTS --create --topic $TOPIC_NAME --partitions 3 --replication-factor 3
/kafka-topics.sh --zookeeper $ZK_HOSTS --create --topic $TOPIC_NAME --partitions 3 --replication-factor 3 --if-not-exists
/kafka-topics.sh --zookeeper $ZK_HOSTS --list
/kafka-topics.sh --zookeeper $ZK_HOSTS --list --exclude-internal
/kafka-topics.sh --zookeeper $ZK_HOSTS  --topic $TOPIC_NAME --describe
/kafka-topics.sh --zookeeper $ZK_HOSTS  --alter --topic my-first-topic --partitions 5
/kafka-configs.sh --zookeeper $ZK_HOSTS --alter --entity-type topics --entity-name my-first-topic --add-config retention.ms=259200000
/kafka-configs.sh --zookeeper $ZK_HOSTS --alter --entity-type topics --entity-name my-first-topic --add-config retention.ms=1000

/kafka-console-producer.sh --broker-list localhost:9092 --topic my-first-topic < topic-input.txt
/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic my-first-topic
/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic my-first-topic --from-beginning

