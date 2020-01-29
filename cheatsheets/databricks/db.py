print("hello")
text_variable = "Hello, hello!"
df = spark.range(1000).toDF("number")
display(df)
df.describe().show()
df["number"]
df.columns
df.schema
df.select("number").show(15)
df.where("number > 10 and number < 14").show()