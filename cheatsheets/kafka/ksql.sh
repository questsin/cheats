//KSQL is the the streaming SQL Engine for the real time data processing of Kafka.  These are some of the commands 
//JMX metrics

--check KSQL is running 

ps aux | grep ksql

--check KSQL error logs (if using Confluent)

confluent log ksql-server
--list created streams

LIST STREAMS

--View the structure of STREAM

DESCRIBE mySTREAM_NAME
--display all topics
SHOW TOPICS
SHOW Quries

--display values in topic
PRINT 'topic_name'