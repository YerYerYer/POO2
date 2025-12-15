#lectura interna
from os import system
import requests as req
import json

with open ('fuente1.json','r') as arch:
    datosJson3 = json.load(arch)
system('cls')
#print(datosJson3)
#print(type(datosJson3))
i = 1
for obj in datosJson3:
    if len(obj['title'])<20:
        print(i, '-', obj['title'], '-', obj['id'])
        i+=1
