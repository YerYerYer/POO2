import requests as req

url = 'https://randomuser.me/api?format=docx'

try:
    respuesta2 = req.get(url)
    datosJson2 = respuesta2.json()
    #print(respuesta2)
    #print(datosJson2)
    for obj in datosJson2:
        print(datosJson2['info']['version'])
        break
    for obj in datosJson2['results']:
        print(obj['gender'])
    print(datosJson2['results'][0]['gender'])
    
except Exception as e:
    print ('Error', e)
    