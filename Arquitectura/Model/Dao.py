from pymysql import *
from Dto import *
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
            print('Estoy conectado!')
        except Exception as e:
            print('Error ',e)
    
    def getConector(self):
        return self.__conector
    def getCursor(self):
        return self.__cursor

class PaisDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()

    def verPaises(self):
        paises = None
        query = 'select pais_id, pais_name, pais_hab from pais order by pais_hab asc'
        try:
            self.getCursor().execute(query)
            paises = self.getCursor().fetchall()
        except Exception as e:
            print('Error ',e)
        return paises
    
    def existePais(self, id): #Si pais existe arroja True, caso contrario arroja False
        existe = False
        query = "SELECT * from pais WHERE PAIS_ID = '"+id+"'"
        try:
            self.getCursor().execute(query)
            pais = self.getCursor().fetchone()
            if pais != None:
                existe = True
        except Exception as e:
            print('Error ',e)
        return existe
    
    def agregarPais(self, pais):
        msj = 'País agregado exitosamente!'
        trans = "insert into pais (PAIS_ID,PAIS_NAME,PAIS_HAB) values('"+pais.getId()+"','"+pais.getName()+"',"+str(pais.getHab())+")"   
        try:
            self.getCursor().execute(trans)
            self.getConector().commit()
        except Exception as e:
            msj = 'Error:'+str(e)
        return msj

    def buscarPais(self, id): #Si pais existe arroja True, caso contrario arroja False
        pais = None
        query = "SELECT * from pais WHERE PAIS_ID = '"+id+"'"
        try:
            self.getCursor().execute(query)
            pais = self.getCursor().fetchone()
        except Exception as e:
            print('Error ',e)
        return pais
    
    def eliminarPais(self, id):
        msj = 'País eliminado exitosamente!'
        trans1 = "DELETE FROM ciudad WHERE PAIS_ID = '"+id+"'" 
        trans2 = "DELETE FROM pais WHERE PAIS_ID = '"+id+"'"   
        try:
            self.getCursor().execute(trans1)
            self.getConector().commit()
            self.getCursor().execute(trans2)
            self.getConector().commit()
        except Exception as e:
            msj = 'Error:'+str(e)
        return msj
    
    def editarPais(self, pais):
        msj = 'País actualizado exitosamente!'
        trans = "UPDATE pais SET pais_name='"+pais.getName()+"' , pais_hab="+str(pais.getHab())+" WHERE pais_id='"+pais.getId()+"'"
        try:
            self.getCursor().execute(trans)
            self.getConector().commit()
        except Exception as e:
            msj = 'Error:'+str(e)
        return msj


class CiudadDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()

    def agregarCiudad(self):
        return 'Hola Llegué!!'
    
    def existeCiudad(self, id): #Si ciudad existe arroja True, caso contrario arroja False
        existe = False
        query = "SELECT * from ciudad WHERE CIUDAD_ID = '"+id+"'"
        try:
            self.getCursor().execute(query)
            ciudad = self.getCursor().fetchone()
            if ciudad!= None:
                existe = True
        except Exception as e:
            print('Error ',e)
        return existe

    def agregarCiudad(self, ciudad):
        msj = 'Ciudad agregada exitosamente!'
        trans = "insert into ciudad (CIUDAD_ID,PAIS_ID,CIUDAD_NAME) values('"+ciudad.getId()+"','"+ciudad.getPais().getId()+"','"+ciudad.getName()+"')"   
        try:
            self.getCursor().execute(trans)
            self.getConector().commit()
        except Exception as e:
            msj = 'Error:'+str(e)
        return msj
