from os import system
from Control.GestionControl import *
from datetime import datetime

class Interfaz:
    def __init__(self) -> None:
        self.gestionEmpleado = GestionEmpleadoControl()
        self.gestionDepartamento = GestionDepartamentoControl()
        self.gestionProyecto = GestionProyectoControl()
        self.gestionAsignacion = GestionAsignacionControl()
        self.gestionRegistroHorario = GestionRegistroHorario()
        self.GestionMetodosEmpleados = GestionMetodosEmpleados()
        self.gestionLogin = GestionLoginControl()
        self.usuarioActual = None
    
    def menuOpcionesAdmin(self):
        system('cls')
        print('Seleccione un menú:')
        print('  1. Gestión de Empleados')
        print('  2. Gestión de Departamentos')
        print('  3. Gestión de Proyectos')
        print('  4. Gestión de Asignaciones de Proyectos')
        print('  5. Gestión de Registros Horarios')
        print('  6. Salir')

    def menuEmpleadoAdmin(self):
        system('cls')
        print('Menú de Operaciones - Empleados')
        print('     1. Ver empleados')
        print('     2. Agregar empleado')
        print('     3. Buscar empleado por Id')
        print('     4. Eliminar un empleado')
        print('     5. Editar empleado')
        print('     6. Salir')

    def verEmpleadosAdmin(self):
        system('cls')
        empleados = self.gestionEmpleado.verEmpleadosControl()
        if len(empleados) != 0:
            for obj in empleados:
                print(' Id Empleado             :',obj[0])
                print(' Nombre Empleado         :',obj[1])
                print(' Dirección               :',obj[2])
                print(' Teléfono                :',obj[3])
                print(' Mail                    :',obj[4])
                print(' Fecha Inicio Contrato   :',obj[5])
                print(' Salario                 :',obj[6])
                print(' Id Departamento         :',obj[7])
                print(' Fecha Término Contrato  :',obj[8],'\n')
        else:
            print('No hay empleados en la Base de Datos!')

    def agregarEmpleadoAdmin(self):
        system('cls')
        id = input('Ingrese la Id del empleado: ')
        name = input('Ingrese el nombre del empleado: ')
        direccion = input('Ingrese la dirección del empleado: ')
        telefono = input('Ingrese el teléfono del empleado: ')
        mail = input('Ingrese el mail del empleado: ')
        f_inicio_c = input('Ingrese la fecha de inicio de contrato (YYYY-MM-DD): ')
        salario = float(input('Ingrese el salario del empleado: '))
        id_departamento = input('Ingrese la Id del departamento del empleado: ')
        f_termino_c = input('Ingrese la fecha de término de contrato (YYYY-MM-DD) o deje vacío si es indefinido: ')
        print(self.gestionEmpleado.agregarEmpleadoControl(
            id, name, direccion, telefono, mail, f_inicio_c, salario, id_departamento, f_termino_c))

    def buscarEmpleadoIdAdmin(self):
        system('cls')
        id = input('Ingrese la Id del empleado que busca: ')
        empleado = self.gestionEmpleado.buscarEmpleadoControl(id)
        if len(empleado) != 0:
            print(' Id Empleado             :',empleado[0])
            print(' Nombre Empleado         :',empleado[1])
            print(' Dirección               :',empleado[2])
            print(' Teléfono                :',empleado[3])
            print(' Mail                    :',empleado[4])
            print(' Salario                 :',empleado[5])
            print(' Id Departamento         :',empleado[6])
            print(' Fecha Inicio Contrato   :',empleado[7])
            print(' Fecha Término Contrato  :',empleado[8],'\n')
        else:
            print('No existe un empleado con ese Id!')

    def eliminarEmpleadoAdmin(self):
        system('cls')
        id = input('Ingrese la Id del empleado: ')
        print(self.gestionEmpleado.eliminarEmpleadoControl(id))

    def editarEmpleadoAdmin(self):
        system('cls')
        id = input('Ingrese la Id del empleado: ')
        nombre = input('Ingrese el nombre del empleado: ')
        direccion = input('Ingrese la dirección del empleado: ')
        telefono = input('Ingrese el teléfono del empleado: ')
        mail = input('Ingrese el mail del empleado: ')
        fechaInicioC = input('Ingrese la fecha de inicio de contrato (YYYY-MM-DD):')
        salario = float(input('Ingrese el salario del empleado: '))
        idDepartamento = input('Ingrese la Id del departamento del empleado: ')
        fechaTerminoC = input('Ingrese la fecha de término de contrato (YYYY-MM-DD) o deje vacío si es indefinido: ')
        print(self.gestionEmpleado.editarEmpleadoControl)(
            id, nombre, direccion, telefono, mail, fechaInicioC, salario, idDepartamento, fechaTerminoC)
    
    def menuDepartamentoAdmin(self):
        system('cls')
        print('Menú de Operaciones - Departamentos')
        print('     1. Ver departamentos')
        print('     2. Agregar departamento')
        print('     3. Buscar departamento por Id')
        print('     4. Eliminar un departamento')
        print('     5. Editar departamento')
        print('     6. Salir')

    def verDepartamentosAdmin(self):
        system('cls')
        departamentos = self.gestionDepartamento.verDepartamentosControl()
        if len(departamentos) != 0:
            for obj in departamentos:
                print(' Id Departamento         :',obj[0])
                print(' Nombre Departamento     :',obj[1])
                print(' Descripción Departamento:',obj[2])
                print(' Gerente Departamento    :',obj[3])
                print(' Fecha Creación          :',obj[4],'\n')
        else:
            print('No hay Departamentos en la Base de Datos!')

    def agregarDepartamentoAdmin(self):
        system('cls')
        id = input('Ingrese la Id del departamento: ')
        nombre = input('Ingrese el nombre del departamento: ')
        desc = input('Ingrese la descripción del departamento: ')
        gerente = input('Ingrese el gerente del departamento: ')
        print(self.gestionDepartamento.agregarDepartamentoControl(id, nombre, desc, gerente))

    def buscarDepartamentoIdAdmin(self):
        system('cls')
        id = input('Ingrese la Id del departamento que busca: ')
        departamento = self.gestionDepartamento.buscarDepartamentoControl(id)
        if len(departamento) != 0:
            print(' Id Departamento         :',departamento[0])
            print(' Nombre Departamento     :',departamento[1])
            print(' Descripción Departamento:',departamento[2])
            print(' Gerente Departamento    :',departamento[3])
            print(' Fecha Creación          :',departamento[4],'\n')
        else:
            print('No existe un departamento con ese Id!')

    def eliminarDepartamentoAdmin(self):
        system('cls')
        id = input('Ingrese la Id del departamento: ')
        print(self.gestionDepartamento.eliminarDepartamentoControl(id))

    def editarDepartamentoAdmin(self):
        system('cls')
        id = input('Ingrese la Id del departamento: ')
        nombre = input('Ingrese el nombre del departamento: ')
        desc = input('Ingrese la descripción del departamento: ')
        gerente = input('Ingrese el gerente del departamento: ')
        print(self.gestionDepartamento.editarDepartamentoControl(id, nombre, desc, gerente))

    def menuProyectoAdmin(self):
        system('cls')
        print('Menú de Operaciones - Proyectos')
        print('     1. Ver proyectos')
        print('     2. Agregar proyecto')
        print('     3. Buscar proyecto por Id')
        print('     4. Eliminar un proyecto')
        print('     5. Editar proyecto')
        print('     6. Asignar empleado a proyecto')
        print('     7. Salir')

    def verProyectosAdmin(self):
        system('cls')
        proyectos = self.gestionProyecto.verProyectosControl()
        if len(proyectos) != 0:
            for obj in proyectos:
                print(' Id Proyecto             :',obj[0])
                print(' Nombre Proyecto         :',obj[1])
                print(' Descripción Proyecto    :',obj[2])
                print(' Fecha Inicio Proyecto   :',obj[3])
                print(' Fecha Término Proyecto  :',obj[4],'\n')

    def agregarProyectoAdmin(self):
        system('cls')
        ID_PROYECTO = input('Ingrese la Id del proyecto: ')
        NOMBRE_PROYECTO = input('Ingrese el nombre del proyecto: ')
        p_descripcion = input('Ingrese la descripción del proyecto: ')
        fecha_inicio_p = input('Ingrese la fecha de inicio del proyecto (YYYY-MM-DD): ')
        p_fecha_termino = input('Ingrese la fecha de término del proyecto (YYYY-MM-DD): ')
        print(self.gestionProyecto.agregarProyectoControl(ID_PROYECTO, NOMBRE_PROYECTO, p_descripcion, fecha_inicio_p, p_fecha_termino))

    def buscarProyectoIdAdmin(self):
        system('cls')
        id = input('Ingrese la Id del proyecto que busca: ')
        proyecto = self.gestionProyecto.buscarProyectoControl(id)
        if len(proyecto) != 0:
            print(' Id Proyecto             :',proyecto[0])
            print(' Nombre Proyecto         :',proyecto[1])
            print(' Descripción Proyecto    :',proyecto[2])
            print(' Fecha Inicio Proyecto   :',proyecto[3])
            print(' Fecha Término Proyecto  :',proyecto[4],'\n')
        else:
            print('No existe un proyecto con ese Id!')
    
    def eliminarProyectoAdmin(self):
        system('cls')
        id = input('Ingrese la Id del proyecto: ')
        print(self.gestionProyecto.eliminarProyectoControl(id))

    def editarProyectoAdmin(self):
        system('cls')
        ID_PROYECTO = input('Ingrese la Id del proyecto: ')
        NOMBRE_PROYECTO = input('Ingrese el nombre del proyecto: ')
        p_descripcion = input('Ingrese la descripción del proyecto: ')
        fecha_inicio_p = input('Ingrese la fecha de inicio del proyecto (YYYY-MM-DD): ')
        p_fecha_termino = input('Ingrese la fecha de término del proyecto (YYYY-MM-DD): ')
        print(self.gestionProyecto.editarProyectoControl(ID_PROYECTO, NOMBRE_PROYECTO, p_descripcion, fecha_inicio_p, p_fecha_termino))

    def asignarEmpleadoProyectoAdmin(self):
        system('cls')
        idEmpleado = input('Ingrese la Id del empleado: ')
        idProyecto = input('Ingrese la Id del proyecto: ')
        print(self.gestionProyecto.asignarEmpleadoProyectoControl(idEmpleado, idProyecto))

    def menuAsignacionesProyectosAdmin(self):
        system('cls')
        print('Menú de Operaciones - Asignaciones de Proyectos')
        print('     1. Ver Proyectos Asignados a Empleados')
        print('     2. Asignar Proyecto a Empleado')
        print('     3. Buscar Proyecto/s asignado por Id de Empleado')
        print('     4. Eliminar asignacion de Proyecto a Empleado')
        print('     5. Editar Asignacion de Proyecto a Empleado')
        print('     6. Salir')
    
    def verProyectosAsignadosAdmin(self):
        system('cls')
        asignaciones = self.gestionAsignacion.verAsignacionesControl()
        if len(asignaciones) != 0:
            for obj in asignaciones:
                print(' Id Asignación           :',obj[0])
                print(' Id Proyecto             :',obj[1])
                print(' Id Empleado             :',obj[2])
                print(' Fecha Asignación        :',obj[3])
                print(' Rol en el Proyecto      :',obj[4],'\n')
        else:
            print('No hay Asignaciones en la Base de Datos!')

    def asignarProyectoEmpleadoAdmin(self):
        system('cls')
        idAsignacion = input('Ingrese la Id de Asignacion: ')
        idEmpleado = input('Ingrese la Id del empleado: ')
        idProyecto = input('Ingrese la Id del proyecto: ')
        fechaAsignacion = input('Ingrese la fecha de asignación (YYYY-MM-DD): ')
        rol = input('Ingrese el rol del empleado en el proyecto: ')
        print(self.gestionAsignacion.asignarEmpleadoProyectoControl(idAsignacion, idProyecto, idEmpleado, fechaAsignacion, rol))

    def buscarProyectoAsignadoAdmin(self):
        system('cls')
        idEmpleado = input('Ingrese la Id del emplado que busca: ')
        asignacion = self.gestionAsignacion.buscarAsignacionesEmpleadoControl(idEmpleado)
        if asignacion:
            for obj in asignacion:
                print(' Id Asignación           :',obj[0])
                print(' Nombre de Proyecto      :',obj[1])
                print(' Nombre Empleado         :',obj[2])
                print(' Fecha Asignación        :',obj[3])
                print(' Rol en el Proyecto      :',obj[4],'\n')
        else:
            print('El empleado no tiene Proyectos Asignados')

    def eliminarAsignacionProyectoEmpleadoAdmin(self):
        system('cls')
        idAsignacion = input('Ingrese la Id de la asignación: ')
        print(self.gestionAsignacion.eliminarAsignacionControl(idAsignacion))

    def editarAsignacionProyectoEmpleadoAdmin(self):
            system('cls')
            idAsignacion = input('Ingrese la Id de la Asignación: ')
            if idAsignacion == None:
                print('No existe una asignación con el Id ingresado!')
                return
            idEmpleado = input('Ingrese la Id del empleado: ')
            idProyecto = input('Ingrese la Id del proyecto: ')
            fechaAsignacion = input('Ingrese la fecha de asignación (YYYY-MM-DD): ')
            rol = input('Ingrese el rol del empleado en el proyecto: ')
            print(self.gestionAsignacion.eliminarAsignacionControl(idAsignacion))
            print(self.gestionAsignacion.asignarEmpleadoProyectoControl(idAsignacion, idEmpleado, idProyecto, fechaAsignacion, rol))

    def menuRegistroHorarioAdmin(self):
        system('cls')
        print('Menú de Operaciones - Asignaciones de Proyectos')
        print('     1. Ver Registros Horarios')
        print('     2. Asignar Horas Trabajadas a Empleado')
        print('     3. Buscar Horas Trabajadas por Id de Empleado')
        print('     4. Eliminar Registro Horario a Empleado por ID de Registro')
        print('     5. Editar Registro Horario a Empleado por ID de Registro')
        print('     6. Salir')

    def verRegistrosHorariosAdmin(self):
        system('cls')
        registros = self.gestionRegistroHorario.verRegistrosHorariosControl()
        if len(registros) != 0:
            for obj in registros:
                print(' Id Registro             :',obj[0])
                print(' Id Empleado             :',obj[1])
                print(' Fecha Registro          :',obj[2])
                print(' Horas Trabajadas        :',obj[3],'\n')

    def asignarHorasEmpleadoAdmin(self):
        system('cls')
        idRegistro = input('Ingrese la Id de Registro: ')
        idEmpleado = input('Ingrese la Id del empleado: ')
        fecha = input('Ingrese la fecha de asignación (YYYY-MM-DD): ')
        horas = input('Ingrese las horas trabajadas del empleado en el día: ')
        print(self.gestionRegistroHorario.asignarHorasEmpleadoControl(idRegistro, idEmpleado, fecha, horas))

    def buscarRegistrosHorasEmpleadoAdmin(self):
        system('cls')
        idEmpleado = input('Ingrese la Id del emplado que busca: ')
        registros = self.gestionRegistroHorario.buscarHorasEmpleadoControl(idEmpleado)
        if registros:
            for obj in registros:
                print(' Id Empleado             :',obj[0])
                print(' Horas Totales           :',obj[1],'\n')

    def eliminarRegistroHorarioAdmin(self):
        system('cls')
        idRegistro = input('Ingrese la Id del registro: ')
        print(self.gestionRegistroHorario.eliminarRegistroHorarioControl(idRegistro))

    def editarRegistroHorarioAdmin(self):
            system('cls')
            idRegistro = input('Ingrese la Id de Registro: ')
            if idRegistro == None:
                print('No existe un registro con el Id ingresado!')
                return
            idEmpleado = input('Ingrese la Id del empleado: ')
            fecha = input('Ingrese la fecha de asignación (YYYY-MM-DD): ')
            horas = input('Ingrese la cantidad de horas trabajadas: ')
            print(self.gestionRegistroHorario.eliminarRegistroHorarioControl(idRegistro))
            print(self.gestionRegistroHorario.asignarHorasEmpleadoControl(idRegistro, idEmpleado, fecha, horas))

    def verProyectosEmp(self, idEmpleado):
        system('cls')
        proyectos = self.GestionMetodosEmpleados.verProyectoslEmpControl(str(idEmpleado))
        if len(proyectos) != 0:
            for obj in proyectos:
                print(' Id Proyecto             :',obj[0])
                print(' Fecha Asignación        :',obj[1])
                print(' Rol en el Proyecto      :',obj[2],'\n')
        else:
            print('No tienes Proyectos Asignados!')

    def verSalarioEmp(self, idEmpleado):
        pass
    
    def marcarHorasEmp(self, idEmpleado):
        system('cls')
        idRegistro = int(input('Ingrese su ID de registro: '))
        fecha = datetime.now()
        horas = input('Ingrese las horas trabajadas: ')
        print(self.gestionRegistroHorario.asignarHorasEmpleadoControl(str(idRegistro), str(idEmpleado), str(fecha), str(horas)))
        
    def verHorasEmp(self, idEmpleado):
        system('cls')
        registros = self.GestionMetodosEmpleados.verHorasEmpControl(str(idEmpleado))
        if registros:
            for obj in registros:
                print(' Horas Totales           :',obj[1],'\n')

    def inicioSesion(self):
        system('cls')
        print('=== INICIO DE SESIÓN ===')
        username = input('Usuario: ')
        password = input('Contraseña: ') 
        objUsuario = self.gestionLogin.loginControl(username, password)

        if objUsuario:
            self.usuarioActual = objUsuario
            print('Bienvenido: '+objUsuario.getNombre())
            print('Rol detectado: '+objUsuario.getRole())
            input('Presione Enter para continuar...')
            rol = objUsuario.getRole().lower().strip()
            if rol == 'admin' or rol == 'administrador':
                self.cargaAdmin()
            elif rol == 'empleado' or rol == 'regular':
                self.cargaEmp()
            else:
                print('Rol no reconocido. Contacte a soporte.')
        else:
            print('Usuario o contraseña incorrectos.')
            input('Presione Enter para intentar de nuevo...')
            self.inicioSesion()

    def cargaEmp(self):
        while True:
            system('cls')
            print('Bienvenido Empleado: '+self.usuarioActual.getNombre())
            print('1. Ver mis proyectos')
            print('2. Ver mi salario')
            print('3. Marcar horas trabajadas')
            print('4. Ver horas trabajadas')
            print('5. Salir / Cerrar Sesión')
            try:
                opc = int(input("Opción: "))
                if opc == 1:
                    self.verProyectosEmp(self.usuarioActual.getId()) 
                    input("Enter para continuar...")
                elif opc == 2:
                    self.verSalarioEmp(self.usuarioActual.getId())
                    input("Enter para continuar...")
                elif opc == 3:
                    self.marcarHorasEmp(self.usuarioActual.getId())
                    input("Enter para continuar...")
                elif opc == 4:
                    self.verHorasEmp(self.usuarioActual.getId())
                    input("Enter para continuar...")
                elif opc == 5:
                    self.usuarioActual = None
                    break
            except ValueError:
                print('Opción no válida')

    def cargaAdmin(self):
            while True:
                self.menuOpcionesAdmin()
                try:
                    opcion = int(input('Ingrese una opción: '))
                    if opcion == 1:
                        print('Gestión de Empleados')
                        self.menuEmpleadoAdmin()
                        opcion = int(input('Ingrese una opción: '))
                        if opcion == 1:
                            self.verEmpleadosAdmin()
                        elif opcion == 2:
                            self.agregarEmpleadoAdmin()
                        elif opcion == 3:
                            self.buscarEmpleadoIdAdmin()
                        elif opcion == 4:
                            self.eliminarEmpleadoAdmin()
                        elif opcion == 5:
                            self.editarEmpleadoAdmin()
                        elif opcion == 6:
                            self.cargaAdmin()
                        else:
                            print('La opcion ingresada no es valida')
                        espera = input('Presione Enter para continuar...')

                    elif opcion == 2:
                        print('Gestión de Departamentos')
                        self.menuDepartamentoAdmin()
                        sigue = True
                        opcion = int(input('Ingrese una opción: '))
                        if opcion == 1:
                            self.verDepartamentosAdmin()
                        elif opcion == 2:
                            self.agregarDepartamentoAdmin()
                        elif opcion == 3:
                            self.buscarDepartamentoIdAdmin()
                        elif opcion == 4:
                            self.eliminarDepartamentoAdmin()
                        elif opcion == 5:
                            self.editarDepartamentoAdmin()
                        elif opcion == 6:
                            self.cargaAdmin()
                        else:
                            print('La opcion ingresada no es valida')
                        espera = input('Presione Enter para continuar...')

                    elif opcion == 3:
                        print('Gestión de Proyectos')
                        self.menuProyectoAdmin()
                        sigue = True
                        opcion = int(input('Ingrese una opción: '))
                        if opcion == 1:
                            self.verProyectosAdmin()
                        elif opcion == 2:
                            self.agregarProyectoAdmin()
                        elif opcion == 3:
                            self.buscarProyectoIdAdmin()
                        elif opcion == 4:
                            self.eliminarProyectoAdmin()
                        elif opcion == 5:
                            self.editarProyectoAdmin()
                        elif opcion == 6:
                            self.asignarProyectoEmpleadoAdmin()
                        elif opcion == 7:
                            self.cargaAdmin()
                        else:
                            print('La opcion ingresada no es valida')
                        espera = input('Presione Enter para continuar...')

                    elif opcion == 4:
                        print('Gestión de Asignaciones de Proyectos')
                        self.menuAsignacionesProyectosAdmin()
                        sigue = True
                        opcion = int(input('Ingrese una opción: '))
                        if opcion == 1:
                            self.verProyectosAsignadosAdmin()
                        elif opcion == 2:
                            self.asignarProyectoEmpleadoAdmin()
                        elif opcion == 3:
                            self.buscarProyectoAsignadoAdmin()
                        elif opcion == 4:
                            self.eliminarAsignacionProyectoEmpleadoAdmin()
                        elif opcion == 5:
                            self.editarAsignacionProyectoEmpleadoAdmin()
                        elif opcion == 6:
                            self.cargaAdmin()
                        else:
                            print('La opcion ingresada no es valida')
                        espera = input('Presione Enter para continuar...')

                    elif opcion == 5:
                        print('Gestión de Registros Horarios')
                        self.menuRegistroHorarioAdmin()
                        sigue = True
                        opcion = int(input('Ingrese una opción: '))
                        if opcion == 1:
                            self.verRegistrosHorariosAdmin()
                        elif opcion == 2:
                            self.asignarHorasEmpleadoAdmin()
                        elif opcion == 3:
                            self.buscarRegistrosHorasEmpleadoAdmin()
                        elif opcion == 4:
                            self.eliminarRegistroHorarioAdmin()
                        elif opcion == 5:
                            self.editarRegistroHorarioAdmin()
                        elif opcion == 6:
                            self.cargaAdmin()
                        else:
                            print('La opcion ingresada no es valida')
                        espera = input('Presione Enter para continuar...')

                    elif opcion == 6:
                        break 

                except ValueError:
                    print('Solo puede ingresar opciones validas')

# AL FINAL DEL ARCHIVO:
if __name__ == "__main__":
    iu = Interfaz()
    iu.inicioSesion()