from pyspark import SparkContext
from pyspark.streaming import StreamingContext
from pyspark.streaming.kafka import KafkaUtils
import json

sc = SparkContext(appName="PythonSparkStreamingKafka_RM_01")
sc.setLogLevel("WARN")

kafkaStream = KafkaUtils.createStream(ssc, 'cdh57-01-node-01.moffatt.me:2181', 'spark-streaming', {'twitter':1})

parsed = kafkaStream.map(lambda v: json.loads(v[1]))

parsed.count().map(lambda x:'Tweets in this batch: %s' % x).pprint()

ssc.start()
ssc.awaitTermination(timeout=180)
