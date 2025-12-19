from datetime import datetime

class Departamento:
    def __init__(self, id = None, name = None, desc = None, gerente = None):
        self.__ID_DEPARTAMENTO = id
        self.__NOMBRE_DEPARTAMENTO = name
        self.__D_DESCRIPCION = desc
        self.__GERENTE = gerente
        self.__FECHA_CREACION: datetime = datetime.now()

    def getId(self):
        return self.__ID_DEPARTAMENTO
    def getNombre(self):
        return self.__NOMBRE_DEPARTAMENTO
    def getDesc(self):
        return self.__D_DESCRIPCION
    def getGerente(self):
        return self.__GERENTE
    def getFCreacion(self):
        return self.__FECHA_CREACION
    
    def setId(self, id):
        self.__ID_DEPARTAMENTO = id
    def setNombre(self, name):
        self.__NOMBRE_DEPARTAMENTO = name
    def setDesc(self, desc):
        self.__D_DESCRIPCION = desc
    def setGerente(self, gerente):
        self.__GERENTE = gerente

class Empleado:
    def __init__(self, id = None, name = None, direccion = None, telefono = None, mail = None, f_inicio_c = None,
                  salario = None, id_departamento = None, f_termino_c = None):
        self.__ID_EMPLEADO = id
        self.__NOMBRE = name 
        self.__DIRECCION = direccion
        self.__TELEFONO = telefono 
        self.__MAIL = mail
        self.__FECHA_INICIO_C = f_inicio_c
        self.__SALARIO = salario
        self.__ID_DEPARTAMENTO = id_departamento
        self.__F_TERMINO_C = f_termino_c

    def getId(self):
        return self.__ID_EMPLEADO
    def getNombre(self):
        return self.__NOMBRE
    def getDireccion(self):
        return self.__DIRECCION
    def getTelefono(self):
        return self.__TELEFONO
    def getMail(self):
        return self.__MAIL
    def getFechaInicioC(self): 
        return self.__FECHA_INICIO_C
    def getSalario(self):
        return self.__SALARIO
    def getIdDepartamento(self):
        return self.__ID_DEPARTAMENTO
    def getFechaTerminoC(self):
        return self.__F_TERMINO_C
    
    def setId(self, id):
        self.__ID_EMPLEADO = id
    def setNombre(self, name):
        self.__NOMBRE = name
    def setDireccion(self, direccion):
        self.__DIRECCION = direccion
    def setTelefono(self, telefono):
        self.__TELEFONO = telefono
    def setMail(self, mail):
        self.__MAIL = mail
    def setFechaInicioC(self, f_inicio_c):
        self.__FECHA_INICIO_C = f_inicio_c
    def setSalario(self, salario):
        self.__SALARIO = salario
    def setIdDepartamento(self, id_departamento):
        self.__ID_DEPARTAMENTO = id_departamento
    def setFechaTerminoC(self, f_termino_c):
        self.__F_TERMINO_C = f_termino_c
    
class AsignacionProyecto:
    def __init__(self, id_emp = None, id_proy = None, id_asig = None, f_asig = None, rol = None):
        self.__ID_EMPLEADO = id_emp
        self.__ID_PROYECTO = id_proy
        self.__ID_ASIGNACION = id_asig
        self.__FECHA_ASIGNACION = f_asig
        self.__ROL = rol

    def getIdEmp(self):
        return self.__ID_EMPLEADO
    def getIdProy(self):
        return self.__ID_PROYECTO
    def getIdAsig(self):
        return self.__ID_ASIGNACION
    def getFAsig(self):
        return self.__FECHA_ASIGNACION
    def getRol(self):
        return self.__ROL
    
    def setIdEmp(self, id_emp):
        self.__ID_EMPLEADO = id_emp
    def setIdProy(self, id_proy):
        self.__ID_PROYECTO = id_proy
    def setIdAsig(self, id_asig):
        self.__ID_ASIGNACION = id_asig
    def setFAsig(self, f_asig):
        self.__FECHA_ASIGNACION = f_asig
    def setRol(self, rol):
        self.__ROL = rol

class Proyecto:
    def __init__(self, id = None, name = None, desc = None, f_inicio = None, f_termino = None):
        self.__ID_PROYECTO = id
        self.__NOMBRE_PROYECTO = name
        self.__P_DESCRIPCION = desc
        self.__FECHA_INICIO_P = f_inicio
        self.__FECHA_TERMINO_P = f_termino

    def getId(self):
        return self.__ID_PROYECTO
    def getNombre(self):
        return self.__NOMBRE_PROYECTO
    def getDesc(self):
        return self.__P_DESCRIPCION
    def getFInicio(self):
        return self.__FECHA_INICIO_P
    def getFTermino(self):
        return self.__FECHA_TERMINO_P
    
    def setId(self, id):
        self.__ID_PROYECTO = id
    def setNombre(self, name):
        self.__NOMBRE_PROYECTO = name
    def setDesc(self, desc):
        self.__P_DESCRIPCION = desc
    def setFInicio(self, f_inicio):
        self.__FECHA_INICIO_P = f_inicio
    def setFTermino(self, f_termino):
        self.__FECHA_TERMINO_P = f_termino

class RegistroHoras:
    def __init__(self, id_reg = None, id_emp = None, fecha = None, horas = None):
        self.__ID_REGISTRO = id_reg
        self.__ID_EMPLEADO = id_emp
        self.__FECHA = fecha
        self.__HORAS_TRABAJADAS = horas

    def getIdReg(self):
        return self.__ID_REGISTRO
    def getIdEmp(self):
        return self.__ID_EMPLEADO
    def getFecha(self):
        return self.__FECHA
    def getHoras(self):
        return self.__HORAS_TRABAJADAS
    
    def setIdEmp(self, id_reg):
        self.__ID_REGISTRO = id_reg
    def setIdProy(self, id_emp):
        self.__ID_EMPLEADO = id_emp
    def setFecha(self, fecha):
        self.__FECHA = fecha
    def setHoras(self, horas):
        self.__HORAS_TRABAJADAS = horas

class Usuario(Empleado):
    def __init__(self, id = None, name = None, direccion = None, telefono = None, mail = None, f_inicio_c = None, salario = None, id_departamento = None, f_termino_c = None, username = None, password = None, role = None):
        super().__init__(id, name, direccion, telefono, mail, f_inicio_c, salario, id_departamento, f_termino_c)

        self.__USERNAME = username
        self.__PASSWORD = password
        self.__ROLE = role

    def getUsername(self):
        return self.__USERNAME
    def getPassword(self):
        return self.__PASSWORD
    def getRole(self):
        return self.__ROLE
    
    def setUsername(self, username):
        self.__USERNAME = username
    def setPassword(self, password):
        self.__PASSWORD = password
    def setRole(self, role):
        self.__ROLE = role