import requests as req

url = 'https://jsonplaceholder.typicode.com/users'

try:
    respuesta = req.get(url)
    print(respuesta)
    print(type(respuesta))
    print(respuesta.text)
    print(type(respuesta.text))
    if respuesta.status_code == 200:
        datosJson = respuesta.json()
        print(datosJson)
        print(type(datosJson))
        print('='*80)
        print(datosJson[4])
        print('='*80)
        for obj in datosJson:
            print(obj)
            print('-'*100)
        
        print('='*80)
        for obj in datosJson:
            print(obj['name'])
            print('-'*100)
        print('='*80)
        for obj in datosJson:
            print(obj['company']['catchPhrase'])
            print('-'*100)
        print('='*80)
        for obj in datosJson:
            if float(obj['address']['geo']['lat']) > 0:
                print(obj['username'],'-',obj['address']['city'])
                print('-'*100)
except Exception as e:
    print('Error: ',e)