#pip install requests
import requests as req

url = 'https://jsonplaceholder.typicode.com/users'

try:
    while True:
        respuesta = req.get(url)
        print(respuesta)
        print(type(respuesta))
        print(respuesta.text)
        print(type(respuesta.text))
        if respuesta.status_code == 200:
            datosJson = respuesta.json()
            print(datosJson)
            print(type(datosJson))
            print('\n')
            print(datosJson[4])
            print('\n')
            for obj in datosJson:
                print(obj)
                print('\n')
            print('\n')
            for obj in datosJson:
                print(obj['name'])
                print(obj['company']['catchPhrase'])
                print('\n')
            for obj in datosJson:
                if float(obj['address']['geo']['lat']) > 0:
                    print(obj['username'])
                    print(obj['address']['city'])
                    print(obj['address']['geo']['lat'])
                    print('\n')
            break

except Exception as e:
    print ('Error', e)
    