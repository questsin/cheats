%sh
ping 10.179.64.4

%sh
nslookup databricks-tutorial-vm.westus2.cloudapp.azure.com

%sql
SELECT count(*) FROM databricks.airlineflight

df = spark.sql("SELECT * FROM usedcars_#####")
df

jdbcHostname = "10.179.64.4"
jdbcDatabase = "MYDB"
userName = 'SA'
password = 'Password1234'
jdbcPort = 1433
jdbcUrl = "jdbc:sqlserver://{0}:{1};database={2};user={3};password={4}".format(jdbcHostname, jdbcPort, jdbcDatabase, userName, password)

df = spark.read.jdbc(url=jdbcUrl, table='states')
display(df)