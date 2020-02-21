#https://ehmatthes.github.io/pcc/cheatsheets/README.html
#$ python --version
import builtins
dir(builtins)  

import sys
dir(sys)  

print("Python version")
print (sys.version)
print("Version info.")
print (sys.version_info)

name = input("What's your name? ")
print("Hello, " + name + "!")

age = input("How old are you? ")
age = int(age)
pi = input("What's the value of pi? ")
pi = float(pi)

savings = 100
result = 100 * 1.10 ** 7
print("I started with $" + str(savings) + " and now have $" + str(result) + ". Awesome!")


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
favorite_color = { "lion": "yellow", "kitty": "red" }
pickle.dump( favorite_color, open( "save.p", "wb" ) )

favorite_color = pickle.load( open( "save.p", "rb" ) )
favorite_color

if __name__ == "__main__":
    import sys
    fib(int(sys.argv[1]))