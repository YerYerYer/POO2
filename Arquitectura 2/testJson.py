import json
import requests


url = 'https://findic.cl/api/uf'
despliegueApi = requests.get(url)
datosApi = despliegueApi.json()
version = datosApi['version']
autor = datosApi['autor']
codigo = datosApi['codigo']
nombre = datosApi['nombre']
unidadMedida = datosApi['unidad_medida']
serie = datosApi['serie']
query = 'INSERT INTO INDICADOR (IN_CODIGO, IN_VERSION, IN_AUTOR, IN_NOMBRE, IN_UNIDAD_MEDIDA)'
objApi = (codigo, version, autor, nombre, unidadMedida)
#print(len(serie))
i=0
#for obj in serie:
#    objApi2 = (datosApi['codigo'], serie[i]['fecha'], serie[i]['valor'])
#    print(objApi2)
#    i +=1

#for obj in fechas:
#    print(obj[0])


url = 'https://findic.cl/api/uf'
despliegueApi = requests.get(url)
datosApi = despliegueApi.json()
query = 'INSERT INTO INDICADOR (IN_CODIGO, IN_VERSION, IN_AUTOR, IN_NOMBRE, IN_UNIDAD_MEDIDA) VALUES ('+datosApi['codigo']+', '+datosApi['version']+', '+datosApi['autor']+', '+datosApi['nombre']+', '+datosApi['unidad_medida']+')'
#try:
#    self.getCursor().execute(query)
#    uf = self.getConector().commit()
#except Exception as e:
#    print('Error :',e)
print(len(datosApi['serie']))
i=0
for obj in datosApi['serie']:
    print(datosApi['serie'][i]['fecha'])
    print(str(datosApi['serie'][i]['valor']))
    query = 'INSERT INTO SERIE (IN_CODIGO, SE_FECHA, SE_VALOR) VALUES ('+datosApi['codigo']+', '+datosApi['serie'][i]['fecha']+', '+str(datosApi['serie'][i]['valor'])+')'
    i +=1
    #try:
    #    self.getCursor().execute(query)
    #    uf = self.getConector().commit()
    #except Exception as e:
    #    print('Error :',e)