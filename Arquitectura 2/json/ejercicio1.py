import requests
import json


url = 'https://mindicador.cl/api'
cambioApi = requests.get(url)
datosJson = cambioApi.json()

print(datosJson['uf']['valor'])