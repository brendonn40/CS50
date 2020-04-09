from sys import argv,exit
from cs50 import SQL
import sqlite3 as lite

db = lite.connect("students.db")
if len(argv)!= 2:
    print("Usage python roster.py house")
    exit(1)

with db:

    db.row_factory = lite.Row
    cur = db.cursor()
    cur.execute("select first,middle,last,birth from students where house = ? order by last,first",(argv[1],))
    rows =cur.fetchall()

    for row in rows:
        if row["middle"] != None:
            print("{} {} {}, born in {}".format(row["first"],row["middle"],row["last"],row["birth"]))
        else:
            print("{} {}, born in {}".format(row["first"],row["last"],row["birth"]))


