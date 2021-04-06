cd ~/
git clone https://github.com/linuxacademy/content-ccdak-kafka-java-connect.git
#Add the necessary dependency to build.gradle:

vi build.gradle
#Add the kafka-client dependency in the dependencies {...} block:

dependencies {
    implementation 'org.apache.kafka:kafka-clients:2.2.1'
    testImplementation 'junit:junit:4.12'
}
#Edit the main class, and implement a simple producer:

vi src/main/java/com/linuxacademy/ccdak/kafkaJavaConnect/Main.java
package com.linuxacademy.ccdak.kafkaJavaConnect;

import org.apache.kafka.clients.producer.*;
import java.util.Properties;

public class Main {

    public static void main(String[] args) {
        Properties props = new Properties();
        props.put("bootstrap.servers", "localhost:9092");
        props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
        props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
        Producer<String, String> producer = new KafkaProducer<>(props);
        for (int i = 0; i < 100; i++) {
            producer.send(new ProducerRecord<String, String>("count-topic", "count", Integer.toString(i)));
        }
        producer.close();
    }

}
#Run your code to produce some data to count-topic:

./gradlew run
#Read from count-topic to verify that the data from your producer published to the topic successfully:

kafka-console-consumer --bootstrap-server localhost:9092 --topic count-topic --from-beginning