import sys
sys.path.append('/Users/memex/Arquitectura/Arquitectura 2/Model')
from Dao import *
from Dto import *
from Model.Dao import UsuarioNormalDao

class GestionEmpleadoControl:
    def __init__(self) -> None:
        self.__empleadoDAO = EmpleadosDAO()
    
    def verEmpleadosControl(self):
        empleados = self.__empleadoDAO.verEmpleados()
        if empleados == None:
            empleados = ()
        return empleados
    
    def agregarEmpleadoControl(self, id, nombre, direccion, telefono, mail, fechaInicioC, salario, idDepartamento, fechaTerminoC):
        if self.__empleadoDAO.existeEmpleado(id) == False:
            objEmpleado = Empleado(id, nombre, direccion, telefono, mail, fechaInicioC, salario, idDepartamento, fechaTerminoC)
            mensaje = self.__empleadoDAO.agregarEmpleado(objEmpleado)
        else:
            mensaje = 'El Id del empleado ya existe!'
        return mensaje
    
    def eliminarEmpleadoControl(self, id):
        if self.__empleadoDAO.existeEmpleado(id) != False:
            mensaje = self.__empleadoDAO.eliminarEmpleado(id)
        else:
            mensaje = 'El Id del empleado no existe!'
        return mensaje
    
    def buscarEmpleadoControl(self, id):
        empleado = self.__empleadoDAO.buscarEmpleado(id)
        if empleado == None:
            empleado = ()
        return empleado
    
    def editarEmpleadoControl(self, id, nombre, direccion, telefono, mail, fechaInicioC, salario, idDepartamento, fechaTerminoC):
        if self.__empleadoDAO.existeEmpleado(id) != False:
            objEmpleado = Empleado(id, nombre, direccion, telefono, mail, fechaInicioC, salario, idDepartamento, fechaTerminoC)
            mensaje = self.__empleadoDAO.editarEmpleado(objEmpleado)
        else:
            mensaje = 'El Id del empleado no existe!'
        return mensaje

class GestionDepartamentoControl:
    def __init__(self) -> None:
        self.__departamentoDAO = DepartamentosDAO()
    
    def verDepartamentosControl(self):
        departamentos = self.__departamentoDAO.verDepartamentos()
        if departamentos == None:
            departamentos = ()
        return departamentos
    
    def agregarDepartamentoControl(self, id, nombre, desc, gerente):
        if self.__departamentoDAO.existeDepartamento(id) == False:
            objDepartamento = Departamento(id, nombre, desc, gerente)
            mensaje = self.__departamentoDAO.agregarDepartamento(objDepartamento)
        else:
            mensaje = 'El Id del departamento ya existe!'
        return mensaje
    
    def buscarDepartamentoControl(self, id):
        departamento = self.__departamentoDAO.buscarDepartamento(id)
        if departamento == None:
            departamento = ()
        return departamento
    
    def eliminarDepartamentoControl(self, id):
        if self.__departamentoDAO.existeDepartamento(id) != False:
            mensaje = self.__departamentoDAO.eliminarDepartamento(id)
        else:
            mensaje = 'El Id del departamento no existe!'
        return mensaje
    
    def editarDepartamentoControl(self, id, nombre, desc, gerente):
        if self.__departamentoDAO.existeDepartamento(id) != False:
            objDepartamento = Departamento(id, nombre, desc, gerente)
            mensaje = self.__departamentoDAO.editarDepartamento(objDepartamento)
        else:
            mensaje = 'El Id del departamento no existe!'
        return mensaje
    
    def eliminarDepartamentoControl(self, id):
        if self.__departamentoDAO.existeDepartamento(id) != False:
            mensaje = self.__departamentoDAO.eliminarDepartamento(id)
        else:
            mensaje = 'El Id del departamento no existe!'
        return mensaje
    
class GestionProyectoControl:
    def __init__(self) -> None:
        self.__proyectoDAO = ProyectoDAO()
    
    def verProyectosControl(self):
        proyectos = self.__proyectoDAO.verProyectos()
        if proyectos == None:
            proyectos = ()
        return proyectos
    
    def agregarProyectoControl(self, id, nombre, fechaInicioP, pDescripcion, pFechaTermino):
        if self.__proyectoDAO.existeProyecto(id) == False:
            objProyecto = Proyecto(id, nombre, fechaInicioP, pDescripcion, pFechaTermino)
            mensaje = self.__proyectoDAO.agregarProyecto(objProyecto)
        else:
            mensaje = 'El Id del proyecto ya existe!'
        return mensaje
    
    def buscarProyectoControl(self, id):
        proyecto = self.__proyectoDAO.buscarProyecto(id)
        if proyecto == None:
            proyecto = ()
        return proyecto
    
    def eliminarProyectoControl(self, id):
        if self.__proyectoDAO.existeProyecto(id) != False:
            mensaje = self.__proyectoDAO.eliminarProyecto(id)
        else:
            mensaje = 'El Id del proyecto no existe!'
        return mensaje
    
    def editarProyectoControl(self, id, nombre, fechaInicioP, pDescripcion, pFechaTermino):
        if self.__proyectoDAO.existeProyecto(id) != False:
            objProyecto = Proyecto(id, nombre, fechaInicioP, pDescripcion, pFechaTermino)
            mensaje = self.__proyectoDAO.editarProyecto(objProyecto)
        else:
            mensaje = 'El Id del proyecto no existe!'
        return mensaje
 
class GestionAsignacionControl:
    def __init__(self) -> None:
        self.__asignacionDAO = AsignacionDAO()
        self.__empleadoDAO = EmpleadosDAO()
        self.__proyectoDAO = ProyectoDAO()
    
    def verAsignacionesControl(self):
        asignaciones = self.__asignacionDAO.verAsignaciones()
        if asignaciones == None:
            asignaciones = ()
        return asignaciones
    
    def eliminarAsignacionControl(self, idAsignacion):
        if self.__asignacionDAO.existeAsignacionId(idAsignacion) != False:
            mensaje = self.__asignacionDAO.eliminarAsignacion(idAsignacion)
        else:
            mensaje = 'La asignacion no existe!'
        return mensaje
    
    def buscarAsignacionesEmpleadoControl(self, idEmpleado):
        asignacion = self.__asignacionDAO.buscarAsignacionesEmpleado(idEmpleado)
        return asignacion
    
    def asignarEmpleadoProyectoControl(self, idAsignacion, idEmpleado, idProyecto, fechaAsignacion, rol):
            mensaje = ''
            if self.__asignacionDAO.existeAsignacionId(idAsignacion) == False:
                if self.__empleadoDAO.existeEmpleado(idEmpleado) != False:
                    if self.__proyectoDAO.existeProyecto(idProyecto) != False:
                        mensaje = self.__asignacionDAO.asignarEmpleadoProyecto(idAsignacion, idProyecto, idEmpleado, fechaAsignacion, rol)
                    else:
                        mensaje = 'El Id del proyecto no existe!'
                else:
                    mensaje = 'El Id del empleado no existe!'
            else:
                mensaje = 'El Id de la asignacion ya existe!'
            return mensaje
    
    def verProyectosPorEmpleadoControl(self, idEmpleado):
        proyectos = self.__asignacionDAO.verProyectosPorEmpleado(idEmpleado)
        if proyectos == None:
            proyectos = ()
        return proyectos
    
    def verEmpleadosPorProyectoControl(self, idProyecto):
        usuarios = self.__asignacionDAO.verEmpleadosPorProyecto(idProyecto)
        if usuarios == None:
            usuarios = ()
        return usuarios

class GestionRegistroHorario:
    def __init__(self) -> None:
        self.__empleadoDAO = EmpleadosDAO()
        self.__registrosDAO = RegistrosDAO()

    def verRegistrosHorariosControl(self):
        registros = self.__registrosDAO.verRegistrosHorarios()
        if registros == None:
            registros = ()
        return registros
    
    def asignarHorasEmpleadoControl(self, idRegistro, idEmpleado, fecha, horas):
            mensaje = ''
            if self.__empleadoDAO.existeEmpleado(idEmpleado) != False:
                if self.__registrosDAO.existeRegistroHorario(idRegistro) != True:
                    mensaje = self.__registrosDAO.agregarRegistroHorario(idRegistro, idEmpleado, fecha, horas)
                else:
                    mensaje = 'El Id del registro ya existe!'
            else:
                mensaje = 'El Id del empleado no existe!'
            return mensaje
    
    def buscarHorasEmpleadoControl(self, idEmpleado):
        registro = self.__registrosDAO.buscarHorasEmpleado(idEmpleado)
        return registro

    def eliminarRegistroHorarioControl(self, idRegistro):
        if self.__registrosDAO.existeRegistroHorario(idRegistro) != False:
            mensaje = self.__registrosDAO.eliminarRegistroHorario(idRegistro)
        else:
            mensaje = 'La asignacion no existe!'
        return mensaje
    
class GestionMetodosEmpleados:
    def __init__(self):
        self.__asignacionDAO = AsignacionDAO()
        self.__empleadosDAO = EmpleadosDAO()
        self.__UsuarioNormalDao = UsuarioNormalDao()

    def verProyectoslEmp(self, idEmpleado):
        proyectos = self.__UsuarioNormalDao.verProyectoslEmp(idEmpleado)
        if proyectos == None:
            proyectos = ()
        return proyectos
    
    def verSalarioUsuarioEmp(self, idEmpleado):
        salarios = self.__UsuarioNormalDao.verSalarioUsuario(idEmpleado)
        if salarios == None:
            salarios = ()
        return salarios


class GestionLoginControl:
    def __init__(self) -> None:
        self.__usuarioDAO = UsuarioDAO()
        self.__empleadoDAO = EmpleadosDAO() 

    def loginControl(self, username, password):
        datosUsuario = self.__usuarioDAO.login(username, password)
        try:
            if datosUsuario:
                idUsuario = datosUsuario[0]
                idEmpleado = datosUsuario[1]
                rol = datosUsuario[3]
                datosEmp = self.__empleadoDAO.buscarEmpleado(str(idEmpleado))
                if datosEmp:
                    objUsuario = Usuario(
                        datosEmp[0], # id
                        datosEmp[1], # nombre
                        datosEmp[2], # direccion
                        datosEmp[3], # telefono
                        datosEmp[4], # mail
                        datosEmp[5], # inicio contrato
                        datosEmp[6], # salario
                        datosEmp[7], # id departamento
                        datosEmp[8], # termino contrato
                        username,    # username
                        "",          # password
                        rol
                    )
                    return objUsuario
                else:
                    print('Usuario existe en tabla USERS pero no en EMPLEADOS')
            else:
                print('Credenciales incorrectas')
        except Exception as e:
            print('Error :',e)