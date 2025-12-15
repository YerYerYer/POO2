from os import system
from Control.GestionControl import *

class Interfaz:
    def __init__(self) -> None:
        self.__controlPais = ControlPais()
        self.__controlCiudad = ControlCiudad()

    def menu1(self):
        print('Menú de Operaciones')
        print('     1. Ver paises')
        print('     2. Agregar país')
        print('     3. Buscar país por Id')
        print('     4. Eliminar un país')
        print('     5. Editar país')
        print('     6. Ver ciudades de un país por id')
        print('     7. Agregar una Ciudad')
        print('     8. Salir')

    def verPaises(self):
        system('cls')
        paises = self.__controlPais.verPaisesControl()
        if len(paises) != 0:
            for obj in paises:
                print(' Id País          :',obj[0])
                print(' Nombre País      :',obj[1])
                print(' N° de Habitantes :',obj[2],'\n')
        else:
            print('No hay paises en la Base de Datos!')
    
    def buscarPaisId(self):
        system('cls')
        id = input('Ingrese la Id del país que busca: ')
        pais = self.__controlPais.buscarPaisControl(id)
        if len(pais) != 0:
            print(' Id País          :',pais[0])
            print(' Nombre País      :',pais[1])
            print(' N° de Habitantes :',pais[2],'\n')
        else:
            print('No existe un país con ese Id!')


    def agregarPais(self):
        system('cls')
        id = input('Ingrese la Id del país: ')
        name = input('Ingrese el nombre del país: ')
        hab = int(input('Ingrese la cantidad de habitantes del país: '))
        print(self.__controlPais.agregarPaisControl(id, name, hab))

    def eliminarPais(self):
        system('cls')
        id = input('Ingrese la Id del país: ')
        print(self.__controlPais.eliminarPaisControl(id))

    def editarPais(self):
        pass

    def agregarCiudadPaisId(self):
        pass
    def agregarCiudad(self):
        system('cls')
        id = input('Ingrese la Id del país, para su ciudad: ')
        pais = self.__controlPais.buscarPaisControl(id)
        if len(pais) != 0:
            print(' Id País          :',pais[0])
            print(' Nombre País      :',pais[1],'\n')
            idCiudad = input('Ingrese la Id de la ciudad: ')
            nameCiudad = input('Ingrese el nombre de la ciudad: ')
            print(self.__controlCiudad.agregarCiudadControl(pais[0], idCiudad, nameCiudad))

        else:
            print('No existe un país con ese Id!')


    def carga(self):
        sigue = True
        while sigue:
            system('cls')
            self.menu1()
            opcion = int(input('Ingrese una opción: '))
            if opcion == 1:
                self.verPaises()
            elif opcion == 2:
                self.agregarPais()
            elif opcion == 3:
                self.buscarPaisId()
            elif opcion == 4:
                self.eliminarPais()
            elif opcion == 5:
                self.editarPais()
            elif opcion == 6:
                self.agregarCiudadPaisId()
            elif opcion == 7:
                self.agregarCiudad()
            else:
                sigue = False
            espera = input('Presione ENTER para continuar ...')

iu = Interfaz()
iu.carga()