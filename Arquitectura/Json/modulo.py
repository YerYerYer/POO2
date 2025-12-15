import json
from pymysql import *

def agregarPeliculas(peliculas):
    n = int(input('Ingrese la cantidad de películas: '))
    for i in range(n):
        id = input('Ingrese el código de película: ')
        title = input('Ingrese el título de la película: ')
        year = int(input('Ingrese el año de lanzamiento: '))
        dur = float(input('Ingrese la duración de la película: '))
        peliculas.append({'id':id,'title':title,'year':year,'len':dur})

def verListaPeliculas(peliculas):
    for obj in peliculas:
        print('id:',obj['id'])
        print('title:',obj['title'])
        print('year:',obj['year'])
        print('len:',obj['len'],'\n')

def escribirJsonExterno(peliculas):
    with open('peliculas.json','w') as arch:
        json.dump(peliculas, arch)
        print('Archivo creado!')

def convertirJsonListaObjetos(listaObjs):
    with open('peliculas.json','r') as arch:
        lista = json.load(arch)
        for obj in lista:
            listaObjs.append(Pelicula(obj['id'],obj['title'],obj['year'],obj['len']))
def enviarJsonBD():
    with open('peliculas.json','r') as arch:
        lista = json.load(arch)
    peliculaDAO = PeliculaDAO()
    for obj in lista:
        peliculaDAO.agregarPeliculaDicc(obj)

def enviarListaObjsBD(listaObjs):
    peliculaDAO = PeliculaDAO()
    for obj in listaObjs:
        peliculaDAO.agregarPeliculaClass(obj)

class Pelicula:
    def __init__(self, id, ti, ye, le) -> None:
        self.__id = id
        self.__title = ti
        self.__year = ye
        self.__len = le
    def getId(self):
        return self.__id
    def getTitle(self):
        return self.__title
    def getYear(self):
        return self.__year
    def getLen(self):
        return self.__len
    def verPelicula(self):
        print('Id      :',self.__id)
        print('Título  :',self.__title)
        print('Año     :',self.__year)
        print('Duración:',self.__len)

class DataBase:
    def __init__(self) -> None:
        try:
            self.__conector = connect(
                host='127.0.0.1',
                user='root',
                password='',
                db='bdunidad2'
            )
            self.__cursor = self.__conector.cursor()
        except Exception as e:
            print('Error ',e)
    def getConector(self):
        return self.__conector
    def getCursor(self):
        return self.__cursor

class PeliculaDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()

    def agregarPeliculaDicc(self, pelicula):
        msj = 'Película agregada exitosamente!'
        trans = "insert into pelicula (id,title,year,len) values('"+pelicula['id']+"','"+pelicula['title']+"',"+str(pelicula['year'])+","+str(pelicula['len'])+")"   
        try:
            self.getCursor().execute(trans)
            self.getConector().commit()
        except Exception as e:
            msj = 'Error:'+str(e)
        return msj
    
    def agregarPeliculaClass(self, pelicula):
        msj = 'Película agregada exitosamente!'
        trans = "insert into pelicula (id,title,year,len) values('"+pelicula.getId()+"','"+pelicula.getTitle()+"',"+str(pelicula.getYear())+","+str(pelicula.getLen())+")"   
        try:
            self.getCursor().execute(trans)
            self.getConector().commit()
        except Exception as e:
            msj = 'Error:'+str(e)
        return msj
