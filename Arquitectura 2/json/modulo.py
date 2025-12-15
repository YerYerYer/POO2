import json
from pymysql import *
def agregarPeliculas(peliculas):
    i = 1
    n = int(input('Ingrese la cantidad de peliculas a ingresar:    '))
    for i in range(n):
        id = input('Ingrese el codigo de la pelicula:   ')
        title = input('Ingrese el titulo de la pelicula:    ')
        year = int(input('Ingrese el año de salida: '))
        dur = float(input('Ingrese la duracion de la pelicula:  '))
        peliculas.append({'id':id, 'title':title, 'year':year, 'len':dur})
        i+=1
        print('\n')

def verListaPeliculas(peliculas):
    for obj in peliculas:
        print('id', obj['id'])
        print('title', obj['title'])
        print('year', obj['year'])
        print('len', obj['len'], '\n')

def escribirJsonExterno(peliculas):
    with open('peliculas.json', 'w') as arch:
        json.dump(peliculas, arch)
        print('Archivo creado!')

def convertirJsonListaObjetos(listaObjs):
    with open('peliculas.json','r') as arch:
        lista = json.load(arch)
        for obj in lista:
            pelicula = Peliculas(obj['id'],obj['title'],obj['year'],obj['len'])
            listaObjs.append(pelicula)
        print('Archivo Creado')
    
def enviarJsonBD():
    with open('peliculas.json','r') as arch:
        lista = json.load(arch)
        PeliculaDAO = PeliculasDAO()
        for obj in lista:
            PeliculaDAO.agregarPeliculaDicc(obj)

def enviarListaObjsBD(listaObjs):
    PeliculaDAO = PeliculasDAO()
    for obj in listaObjs:
        PeliculaDAO.agregarPeliculaClass(obj)

class Peliculas:
    def __init__(self, id, title, year, leng) -> None:
        self.__id = id
        self.__title = title
        self.__year = year
        self.__leng = leng

    def getId(self):
        return self.__id
    def getTitle(self):
        return self.__title
    def getYear(self):
        return self.__year
    def getLength(self):
        return self.__leng
    
    def verPelicula(self):
        print('Id            :',self.__id)
        print('Titulo        :',self.__title)
        print('Año           :',self.__year)
        print('Duracion      :',self.__leng)

class DataBase:
    def __init__(self) -> None:
        try:
            self.__conector = connect(
                host='localhost',
                user='root',
                password='',
                database='lospelaos'
            )
            self.__cursor = self.__conector.cursor()
            print('Conexion Establecida')
        except Exception as e:
            print('Error', e)

    def getConector(self):
        return self.__conector
    def getCursor(self):
        return self.__cursor
    
class PeliculasDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()
    def agregarPeliculaDicc(self, pelicula):
        msj = 'Pelicula agregada exitosamente!'
        trans = 'INSERT INTO PELICULA (ID, TITLE, YEAR, LENGTH) VALUES("'+pelicula['id']+'","'+pelicula['title']+'","'+pelicula['year']+'","'+pelicula['length']+'")'
        try:
            self.getCursor().execute(trans)
            empleados = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return empleados
    
    def agregarPeliculaClass(self, pelicula):
        msj = 'Pelicula agregada exitosamente!'
        trans = 'INSERT INTO PELICULA (ID, TITLE, YEAR, LENGTH) VALUES("'+pelicula.getId()+'","'+pelicula.getTitle()+'","'+str(pelicula.getYear())+'","'+str(pelicula.getLengh())+'")'
        try:
            self.getCursor().execute(trans)
            empleados = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return empleados