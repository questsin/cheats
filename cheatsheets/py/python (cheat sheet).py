#https://ehmatthes.github.io/pcc/cheatsheets/README.html
#$ python --version

name = input("What's your name? ")
print("Hello, " + name + "!")

age = input("How old are you? ")
age = int(age)
pi = input("What's the value of pi? ")
pi = float(pi)

squares = []
for x in range(1, 11):
	squares.append(x**2)

fav_numbers = {'eric': 17, 'ever': 4}
for name, number in fav_numbers.items():
	print(name + ' loves ' + str(number))

if age < 4:
	ticket_price = 0
elif age < 18:
	ticket_price = 10
else:
	ticket_price = 15

from os import path
fname = path.expanduser('track.csv')
path.getsize(fname)
with open(fname) as fp:
    for lnum, line in enumerate(fp):
        if lnum > 10:
            break
        print(line[:-1])

import sqlite3
conn = sqlite3.connect('weather.db')
wdf = pd.read_sql('SELECT * FROM weather', conn)
wdf.columns
wdf = pd.read_sql('SELECT * FROM weather', conn, parse_dates=['DATE'], index_col='DATE')
wdf.dtypes
wdf.index
wdf.describe()
ddf = df.groupby(df['lpep_pickup_datetime'].dt.date).count()

import pickle
with open('model.pickle', 'wb') as out:
    pickle.dump(pipe, out)
with open('model.pickle', 'rb') as fp
 data = pickle.load(fp)
