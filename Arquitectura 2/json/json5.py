# 1. Solicitar desde pantalla datos para almacenar peliculas(SQL), 
#    los datos son: id, titulo, año salida y duración
# 2. Se crea una lista de peliculas (Cada pelicula es un diccionario Py) 
# 3. Se almacena la lista en un archivo json externo 

from modulo import *

peliculas = []
listaObjs = []
agregarPeliculas(peliculas)
verListaPeliculas(peliculas)
escribirJsonExterno(peliculas)

convertirJsonListaObjetos(listaObjs)
#for obj in listaObjs:
#    obj.verPelicula()

#enviarJsonBD()
enviarListaObjsBD(listaObjs)