from pyspark.sql import *

from pyspark.sql. types import *

# Create a dataframe and table from sample data

csvFile = spark.read.csv ('/HdiSamples/HdiSamples/SensorSampleData/hvac/HVAC.csv', header=True, inferSchema=True)

csvFile.write. saveAsTable("hvac")

%%sql

SELECT buildingID, (targettemp - actualtemp) AS temp_diff, date FROM hvac WHERE date = \"6/1/13\"