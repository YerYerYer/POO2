from pymysql import *
from Dto import *

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
    
    # DAO PARA EMPLEADOS, DEPARTAMENTOS Y PROYECTOS, CADA UNA CUENTA CON LA OPCION; AGREGAR, VER, BUSCAR, ELIMINAR Y EDITAR

class EmpleadosDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()
    
    def verEmpleados(self):
        empleados = None
        query = 'SELECT id_empleado, nombre, direccion, telefono, mail, ' \
                'fecha_inicio_c, salario, id_departamento, fecha_termino_c FROM EMPLEADOS'
        try:
            self.getCursor().execute(query)
            empleados = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return empleados
    
    def existeEmpleado(self, id):
        existe = False
        query = 'SELECT * FROM EMPLEADOS WHERE ID_EMPLEADO = "'+id+'"'
        try:
            self.getCursor().execute(query)
            empleado = self.getCursor().fetchone()
            if empleado != None:
                existe = True
        except Exception as e:
            print('Error', e)
        return existe
    
    def agregarEmpleado(self, empleado):
        msj = 'Empleado agregado correctamente'
        trans = 'INSERT INTO EMPLEADOS (ID_EMPLEADO, NOMBRE, DIRECCION, TELEFONO, MAIL, FECHA_INICIO_C, SALARIO, ID_DEPARTAMENTO, FECHA_TERMINO_C) VALUES ("'+empleado.getId()+'","'+empleado.getNombre()+'","'+empleado.getDireccion()+'","'+empleado.getTelefono()+'","'+empleado.getMail()+'","'+empleado.getFechaInicioC()+'","'+str(empleado.getSalario())+'","'+empleado.getIdDepartamento()+'","'+empleado.getFechaTerminoC()+'")'
        try:
            self.getCursor().execute(trans)
            empleado = self.getConector().commit()
        except Exception as e:
            msj = 'Error'+str(e)
        return msj
    
    def buscarEmpleado(self, id):
        empleado = None
        query = 'SELECT * FROM EMPLEADOS WHERE ID_EMPLEADO = "'+id+'"'
        try:
            self.getCursor().execute(query)
            empleado = self.getCursor().fetchone()
        except Exception as e:
            print('Error', e)
        return empleado

    def eliminarEmpleado(self, id):
        msj = 'Empleado eliminado correctamente'
        trans = 'DELETE FROM EMPLEADOS WHERE ID_EMPLEADO = "'+id+'"'
        try:
            self.getCursor().execute(trans)
            empleado = self.getConector().commit()
        except Exception as e:
            msj = 'Error'+str(e)
        return msj
    
    def editarEmpleado(self, empleado):
        msj = 'Empleado editado correctamente'
        trans = 'UPDATE EMPLEADOS SET NOMBRE = "'+empleado.getNombre()+'", DIRECCION = "'+empleado.getDireccion()+'", TELEFONO = "'+empleado.getTelefono()+'", MAIL = "'+empleado.getMail()+'", FECHA_INICIO_C = "'+empleado.getFechaInicioC()+'", SALARIO = "'+str(empleado.getSalario())+'", ID_DEPARTAMENTO = "'+empleado.getIdDepartamento()+'", FECHA_TERMINO_C = "'+empleado.getFechaTerminoC()+'" WHERE ID_EMPLEADO = "'+empleado.getId()+'" WHERE ID_EMPLEADO = "'+empleado.getId()+'"'
        try:
            self.getCursor().execute(trans)
            empleado = self.getConector().commit() 
        except Exception as e:
            msj = 'Error'+str(e)
        return msj

class DepartamentosDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()

    def agregarDepartamento(self, departamento):
        msj = 'Departamento agregado correctamente'
        trans = 'INSERT INTO DEPARTAMENTOS (ID_DEPARTAMENTO, NOMBRE_DEPARTAMENTO, D_DESCRIPCION, GERENTE, FECHA_CREACION) VALUES ("'+departamento.getId()+'","'+departamento.getNombre()+'","'+departamento.getDesc()+'","'+departamento.getGerente()+'","'+str(departamento.getFCreacion())+'")'
        try:
            self.getCursor().execute(trans)
            departamento = self.getConector().commit()  
        except Exception as e:
            msj = 'Error'+str(e)
        return msj
    
    def verDepartamentos(self):
        departamentos = None
        query = 'SELECT ID_DEPARTAMENTO, NOMBRE_DEPARTAMENTO, D_DESCRIPCION, GERENTE, FECHA_CREACION FROM DEPARTAMENTOS'
        try:
            self.getCursor().execute(query)
            departamentos = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return departamentos
    
    def existeDepartamento(self, id):
        existe = False
        query = 'SELECT * FROM DEPARTAMENTOS WHERE ID_DEPARTAMENTO = "'+id+'"'
        try:
            self.getCursor().execute(query)
            departamento = self.getCursor().fetchone()
            if departamento != None:
                existe = True
        except Exception as e:
            print('Error', e)
        return existe
    
    def buscarDepartamento(self, id):
        departamento = None
        query = 'SELECT * FROM DEPARTAMENTOS WHERE ID_DEPARTAMENTO = "'+id+'"'
        try:
            self.getCursor().execute(query)
            departamento = self.getCursor().fetchone()
        except Exception as e:
            print('Error', e)
        return departamento
    
    def eliminarDepartamento(self, id):
        msj = 'Departamento eliminado correctamente'
        trans = 'DELETE FROM DEPARTAMENTOS WHERE ID_DEPARTAMENTO = "'+id+'"'
        try:
            self.getCursor().execute(trans)
            departamento = self.getConector().commit() 
        except Exception as e:
            msj = 'Error'+str(e)
        return msj
    
    def editarDepartamento(self, departamento):
        msj = 'Departamento editado correctamente'
        trans = 'UPDATE DEPARTAMENTOS SET NOMBRE_DEPARTAMENTO = "'+departamento.getNombre()+'", '
        'D_DESCRIPCION = "'+departamento.getDesc()+'", GERENTE = "'+departamento.getGerente()+'", '
        'FECHA_CREACION = "'+str(departamento.getFCreacion())+'" WHERE ID_DEPARTAMENTO = "'+departamento.getId()+'" '
        'WHERE ID_DEPARTAMENTO = "'+departamento.getId()+'"'
        try:
            self.getCursor().execute(trans)
            departamento = self.getConector().commit() 
        except Exception as e:
            msj = 'Error'+str(e)   
        return msj
    
class ProyectoDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()
    
    def verProyectos(self):
        proyectos = None
        query = 'SELECT id_proyecto, nombre_proyecto, p_descripcion, fecha_inicio_p, p_fecha_termino FROM PROYECTOS'
        try:
            self.getCursor().execute(query)
            proyectos = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return proyectos
    
    def existeProyecto(self, id):
        existe = False
        query = 'SELECT * FROM PROYECTOS WHERE ID_PROYECTO = "'+id+'"'
        try:
            self.getCursor().execute(query)
            proyecto = self.getCursor().fetchone()
            if proyecto != None:
                existe = True
        except Exception as e:
            print('Error', e)
        return existe
    
    def agregarProyecto(self, proyecto):
        msj = 'Proyecto agregado correctamente'
        trans = 'INSERT INTO PROYECTOS (ID_PROYECTO, NOMBRE_PROYECTO, P_DESCRIPCION, FECHA_INICIO_P, P_FECHA_TERMINO) ' \
        'VALUES ("'+proyecto.getId()+'","'+proyecto.getNombre()+'","'+proyecto.getDesc()+'","'+proyecto.getFInicio()+'","'+proyecto.getFTermino()+'")'
        try:
            self.getCursor().execute(trans) 
            proyecto = self.getConector().commit()  
        except Exception as e:
            msj = 'Error'+str(e)    
        return msj
    
    def buscarProyecto(self, id):
        proyecto = None
        query = 'SELECT * FROM PROYECTOS WHERE ID_PROYECTO = "'+id+'"'
        try:
            self.getCursor().execute(query)
            proyecto = self.getCursor().fetchone()
        except Exception as e:
            print('Error', e)
        return proyecto 
    
    def eliminarProyecto(self, id):
        msj = 'Proyecto eliminado correctamente'
        trans = 'DELETE FROM PROYECTOS WHERE ID_PROYECTO = "'+id+'"'
        try:
            self.getCursor().execute(trans)
            proyecto = self.getConector().commit()  
        except Exception as e:
            msj = 'Error'+str(e)
        return msj
    
    def editarProyecto(self, proyecto):
        msj = 'Proyecto editado correctamente'
        trans = 'UPDATE PROYECTOS SET NOMBRE_PROYECTO = "'+proyecto.getNombre()+'", FECHA_INICIO_P = "'+proyecto.getFechaInicioP()+'", P_DESCRIPCION = "'+proyecto.getPDescripcion()+'", P_FECHA_TERMINO = "'+proyecto.getPFechaTermino()+'" WHERE ID_PROYECTO = "'+proyecto.getId()+'" WHERE ID_PROYECTO = "'+proyecto.getId()+'"'
        try:
            self.getCursor().execute(trans)
            proyecto = self.getConector().commit()
        except Exception as e:
            msj = 'Error'+str(e)
        return msj
        
class AsignacionDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()
    
    def verAsignaciones(self):
        asignaciones = None
        query = 'SELECT ID_ASIGNACION, ID_PROYECTO, ID_EMPLEADO, FECHA_ASIGNACION, ROL FROM ASIGNACION_PROYECTO'
        try:
            self.getCursor().execute(query)
            asignaciones = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return asignaciones
    
    #def existeAsignacion(self, idEmpleado, idProyecto):
    #    existe = False
    #    query = 'SELECT * FROM ASIGNACION_PROYECTO WHERE ID_PROYECTO = "'+idProyecto+'" AND ID_EMPLEADO = "'+idEmpleado+'"'
    #    try:
    #        self.getCursor().execute(query)
    #        asignacion = self.getCursor().fetchone()
    #        if asignacion != None:
    #            existe = True
    #    except Exception as e:
    #        print('Error', e)
    #    return existe
    
    def existeAsignacionId(self, idAsignacion):
        existe = False
        query = 'SELECT * FROM ASIGNACION_PROYECTO WHERE ID_ASIGNACION = "'+idAsignacion+'"'
        try:
            self.getCursor().execute(query)
            asignacion = self.getCursor().fetchone()
            if asignacion != None:
                existe = True
        except Exception as e:
            print('Error', e)
        return existe
    
    def asignarEmpleadoProyecto(self, idAsignacion, idEmpleado, idProyecto, fechaAsignacion, rol):
        msj = 'Empleado asignado al proyecto correctamente'
        trans = 'INSERT INTO ASIGNACION_PROYECTO (ID_ASIGNACION, ID_PROYECTO, ID_EMPLEADO, FECHA_ASIGNACION, ROL) VALUES ("'+idAsignacion+'","'+idProyecto+'","'+idEmpleado+'","'+fechaAsignacion+'","'+rol+'")'
        try:
            self.getCursor().execute(trans)
            empleado_proyecto = self.getConector().commit()
        except Exception as e:
            msj = 'Error'+str(e)
        return msj
    
    def eliminarAsignacion(self, idAsignacion):
        msj = 'Asignacion eliminada correctamente'
        query = 'DELETE FROM ASIGNACION_PROYECTO WHERE ID_ASIGNACION = "'+idAsignacion+'"'
        try:
            self.getCursor().execute(query)
            asignacion = self.getConector().commit()
        except Exception as e:
            msj = 'Error'+str(e)
        return msj
    
    def buscarAsignacionesEmpleado(self, idEmpleado):
        asignaciones = None
        query = 'SELECT AP.ID_ASIGNACION, P.NOMBRE_PROYECTO, E.NOMBRE, AP.FECHA_ASIGNACION, AP.ROL ' \
                'FROM ASIGNACION_PROYECTO AP ' \
                'JOIN PROYECTOS P ON AP.ID_PROYECTO = P.ID_PROYECTO ' \
                'JOIN EMPLEADOS E ON AP.ID_EMPLEADO = E.ID_EMPLEADO ' \
                'WHERE AP.ID_EMPLEADO = "'+idEmpleado+'"'
        try:
            self.getCursor().execute(query)
            asignaciones = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return asignaciones
    
    #def verEmpleadosPorProyecto(self, idProyecto):
    #    empleados = None
    #    query = 'SELECT AP.ID_EMPLEADO, E.NOMBRE, AP.FECHA_ASIGNACION, AP.ROL '\
    #            'FROM ASIGNACION_PROYECTO AP ' \
    #            'JOIN EMPLEADOS E ON AP.ID_EMPLEADO = E.ID_EMPLEADO ' \
    #            'WHERE AP.ID_PROYECTO = "'+idProyecto+'"'
    #    try:
    #        self.getCursor().execute(query)
    #        empleados = self.getCursor().fetchall()
    #    except Exception as e:
    #        print('Error :',e)
    #    return empleados
    
class RegistrosDAO(DataBase):
        def __init__(self) -> None:
            super().__init__()
            
        def verRegistrosHorarios(self):
            registros = None
            query = 'SELECT ID_REGISTRO, ID_EMPLEADO, FECHA, HORAS_TRABAJADAS FROM REGISTROS_HORARIOS'
            try:
                self.getCursor().execute(query)
                registros = self.getCursor().fetchall()
            except Exception as e:
                print('Error :',e)
            return registros
        
        def existeRegistroHorario(self, idRegistro):
            existe = False
            query = 'SELECT * FROM REGISTROS_HORARIOS WHERE ID_REGISTRO = "'+idRegistro+'"'
            try:
                self.getCursor().execute(query)
                asignacion = self.getCursor().fetchone()
                if asignacion != None:
                    existe = True
            except Exception as e:
                print('Error', e)
            return existe
        
        def agregarRegistroHorario(self, idRegistro, idEmpleado, fecha, horas):
            msj = 'Registro horario agregado correctamente'
            trans = 'INSERT INTO REGISTROS_HORARIOS (ID_REGISTRO, ID_EMPLEADO, FECHA, HORAS_TRABAJADAS) VALUES ("'+idRegistro+'","'+idEmpleado+'","'+fecha+'","'+str(horas)+'")'
            try:
                self.getCursor().execute(trans)
                registro = self.getConector().commit()
            except Exception as e:
                msj = 'Error'+str(e)
            return msj
        
        def buscarHorasEmpleado(self, idEmpleado):
            registros = None
            query = 'SELECT ID_EMPLEADO, SUM(HORAS_TRABAJADAS) AS HORAS_TOTALES FROM REGISTROS_HORARIOS ' \
            'WHERE ID_EMPLEADO = '+str(idEmpleado)+' GROUP BY ID_EMPLEADO'
            try:
                self.getCursor().execute(query)
                registros = self.getCursor().fetchall()
            except Exception as e:
                print('Error :',e)
            return registros

        def eliminarRegistroHorario(self, idRegistro):
            msj = 'Registro eliminado correctamente'
            query = 'DELETE FROM REGISTROS_HORARIOS WHERE ID_REGISTRO = "'+idRegistro+'"'
            try:
                self.getCursor().execute(query)
                registro = self.getConector().commit()
            except Exception as e:
                msj = 'Error'+str(e)
            return msj

class UsuarioDAO(DataBase):
    def __init__(self) -> None:
        super().__init__()
    
    def verUsuarios(self):
        usuarios = None
        query = 'SELECT ID_USUARIO, USERNAME FROM USUARIOS'
        try:
            self.getCursor().execute(query)
            usuarios = self.getCursor().fetchall()
        except Exception as e:
            print('Error :',e)
        return usuarios
    
    def existeUsuario(self, id):
        pass

#Pruebas de conexion
#objDB = DataBase()
#print(objDB.getConector())