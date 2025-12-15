import sys
sys.path.append('/Users/tic.calama/Arquitectura/Model')
from Dao import *
from Dto import *

class ControlPais:
    def __init__(self) -> None:
        self.__paisDAO = PaisDAO()

    def verPaisesControl(self):
        paises = self.__paisDAO.verPaises()
        if paises == None:
            paises = ()
        return paises
    
    def agregarPaisControl(self, id, name, hab):
        if self.__paisDAO.existePais(id) == False:
            objPais = Pais(id, name, hab)
            mensaje = self.__paisDAO.agregarPais(objPais)
        else:
            mensaje = 'El Id del país ya existe!'
        return mensaje
    
    def eliminarPaisControl(self, id):
        if self.__paisDAO.existePais(id) != False:
            mensaje = self.__paisDAO.eliminarPais(id)
        else:
            mensaje = 'El Id del país no existe!'
        return mensaje

    def buscarPaisControl(self, id):
        pais = self.__paisDAO.buscarPais(id)
        if pais == None:
            pais = ()
        return pais

class ControlCiudad:
    def __init__(self) -> None:
        self.__ciudadDAO = CiudadDAO()
    
    def agregarCiudadControl(self, idPais, idCiudad, nameCiudad):
        if self.__ciudadDAO.existeCiudad(idCiudad) == False:
            objPais = Pais(idPais, '', 0)
            objCiudad = Ciudad(idCiudad, nameCiudad,objPais)
            mensaje = self.__ciudadDAO.agregarCiudad(objCiudad)
        else:
            mensaje = 'El Id de la ciudad ya existe!'
        return mensaje
    