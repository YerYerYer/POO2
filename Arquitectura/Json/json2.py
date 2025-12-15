import requests as req

url = 'https://randomuser.me/api?format=docx'
try:
    respuesta = req.get(url)
    if respuesta.status_code == 200:
        datosJson = respuesta.json()
        print(datosJson)
        print(type(datosJson))
        print(datosJson['info']['version'])
        print(datosJson['results'][0]['gender'])
except Exception as e:
    print('Error: ',e)