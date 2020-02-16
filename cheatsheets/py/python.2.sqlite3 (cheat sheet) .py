http://sqlitebrowser.org/

import sqlite3
from sqlite3 import Error

pip install bash_kernel
python -m bash_kernel.install

python setup.py install
python -m sqlite3_kernel.install

Description	
.show	Displays current settings for various parameters
.databases	Provides database names and files
.quit	Quit sqlite3 program
.tables	Show current tables
.schema	Display schema of table
.header	Display or hide the output table header
.mode	Select mode for the output table
.dump	Dump database in SQL text format


import sqlite3
sqlite3.version
db = sqlite3.connect('data/test.db')
dbm = db = sqlite3.connect(':memory:')
db.close()
dbm.close()

cursor = db.cursor()
cursor.execute('''DROP TABLE books''')
db.commit()

cursor.execute('SELECT * FROM fib')
print(cursor.fetchall())

df = pd.read_sql_query(sql, connection)
df.to_sql('trips', connection, if_exists='append', index=False)
