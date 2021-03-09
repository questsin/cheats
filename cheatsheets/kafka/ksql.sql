SHOW HISTORY;
SHOW TOPICS;
PRINT "TOPIC;
SHOW PROPERTIES";

CREATE TABLE hourly_metrics AS
  SELECT url, COUNT(*)
  FROM page_views
  WINDOW TUMBLING (SIZE 1 HOUR)
  GROUP BY url EMIT CHANGES;

  SELECT * FROM hourly_metrics
  WHERE url = 'http://myurl.com' AND WINDOWSTART = '2019-11-20T19:00';

  SELECT * FROM hourly_metrics EMIT CHANGES;

 EXPLAIN [name of Query];
/* Streaming ETL*/


CREATE STREAM vip_actions AS
  SELECT userid, page, action
  FROM clickstream c
  LEFT JOIN users u ON c.userid = u.user_id
  WHERE u.level = 'Platinum' EMIT CHANGES;

/*Anomaly Detection*/
CREATE TABLE possible_fraud AS
  SELECT card_number, count(*)
  FROM authorization_attempts
  WINDOW TUMBLING (SIZE 5 SECONDS)
  GROUP BY card_number
  HAVING count(*) > 3 EMIT CHANGES;

/*Monitoring*/

CREATE TABLE error_counts AS
  SELECT error_code, count(*)
  FROM monitoring_stream
  WINDOW TUMBLING (SIZE 1 MINUTE)
  WHERE  type = 'ERROR'
  GROUP BY error_code EMIT CHANGES;

DESCRIBE EXTENDED error_counts; 
DROP error_counts; 

CREATE STREAM clicks_transformed AS
  SELECT userid, page, action
  FROM clickstream c
  LEFT JOIN users u ON c.userid = u.user_id EMIT CHANGES;

   CREATE SINK CONNECTOR es_sink WITH (
  'connector.class' = 'io.confluent.connect.elasticsearch.ElasticsearchSinkConnector',
  'key.converter'   = 'org.apache.kafka.connect.storage.StringConverter',
  'topics'          = 'clicks_transformed',
  'key.ignore'      = 'true',
  'schema.ignore'   = 'true',
  'type.name'       = '',
  'connection.url'  = 'http://elasticsearch:9200');