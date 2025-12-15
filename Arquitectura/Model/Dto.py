class Pais:
    def __init__(self, id, name, hab):
        self.__id = id
        self.__name = name
        self.__hab = hab

    def getId(self):
        return self.__id
    def getName(self):
        return self.__name
    def getHab(self):
        return self.__hab
    
class Ciudad:
    def __init__(self, id, name, pais):
        self.__id = id
        self.__name = name
        self.__pais = pais
    
    def getId(self):
        return self.__id
    def getName(self):
        return self.__name
    def getPais(self):
        return self.__pais

    