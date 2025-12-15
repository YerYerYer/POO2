#lectura interna

import requests as req
import json

with open('fuente1.json','r') as arch:
    datos = json.load(arch)

print(datos)
print(type(datos))
i = 1
for obj in datos:
    if len(obj['title']) < 20:
        print(i,'-',obj['title'],'-',obj['id'])
        i+=1
