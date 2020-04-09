from cs50 import get_string
from sys import exit

text=get_string("Text: ")

def count_letters(text):
    aux=0
    for i in text:
        if(i.isalpha()):
            aux+=1
    return aux
def count_words(text):
    aux=1
    for i in text:
        if(i.isspace()):
            aux+=1
    return aux
def count_sentences(text):
    aux=0
    for i in text:
        if(i in [".","?","!"]):
            aux+=1
    return aux

letters=count_letters(text)
words=count_words(text)
sentences=count_sentences(text)

l=(letters/words) * 100
s=(sentences/words) * 100
index =round((0.0588*l)-(0.296*s)-15.8)
if index < 1:
    print("Before Grade 1")
elif index > 16:
    print("Grade 16+")
else:
    print(f"Grade {index}")
