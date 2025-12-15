from pymysql import *

class DataBase:
    def __init__(self) -> None:
        try:
            self.__conector = connect(
                host='localhost',
                user='root',
                password='',
                database='lospelaosjson'
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
        trans = 'INSERT INTO PELICULA (ID, TITLE, YEAR, LENGTH) VALUES("'+pelicula.getId()+'","'+pelicula.getTitle()+'","'+str(pelicula.getYear())+'","'+str(pelicula.getLengh())+'")'
        try:
            self.getCursor().execute(trans)
            empleados = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return empleados