from csv import DictReader
from sys import argv,exit
from cs50 import SQL
open(f"students.db", "w").close()
db = SQL("sqlite:///students.db")

if len(argv)!= 2:
    print("Usage python import.py file.csv")
    exit(1)

db.execute("CREATE TABLE students (id INT , first TEXT, middle TEXT, last TEXT, house TEXT,birth NUMERIC,PRIMARY KEY(id))")
id=1
with open (argv[1],"r") as characters:
    reader = DictReader(characters)
    for row in reader:
        names = row["name"].split()
        house = row["house"]
        birth = row["birth"]
        if len(names) == 3:
            db.execute("INSERT INTO students (id, first , middle , last , house ,birth) VALUES(?, ?, ?, ?,?,?)",id,names[0],names[1],names[2],house,birth)
            id+=1
        else:
            db.execute("INSERT INTO students (id , first , middle , last , house ,birth) VALUES(?, ?, ?, ?,?,?)",id,names[0],None,names[1],house,birth)
            id+=1

