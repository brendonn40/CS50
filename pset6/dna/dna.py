from csv import DictReader
from sys import argv,exit

if len(argv)!= 3:
    print("Usage: python dna.py file.csv sequence.txt")
    exit(1)



results = []
teste = []
columns = []
found = False
with open(argv[1],"r") as csv_file:
    csv_reader = DictReader(csv_file)
    for row in csv_reader:
        teste.append(row)

with open(argv[2],"r") as text:
    sequence=text.read()

strs=list(teste[0].keys())
strs.remove('name')

#conta quantas vezes a str se repete na sequencia.
for x in strs:
    times=sequence.count(x)
    aux=0
    for i in range(1,times+1):
        if x * i in sequence:
            aux+=1
    results.append(aux)


#cria uma lista com a sequencia de cada pessoa.
for i in range(len(teste)):
    columns.append(list())
    for k in strs:
        columns[i].append(int(teste[i][k]))

#compara a lista de resultados com a lista criada acima.
for i in range(len(teste)):
    if results ==  columns[i]:
        print(teste[i]["name"])
        found = True

if found == False:
    print("No match.")
