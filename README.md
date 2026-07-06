# Proyecto Innovatec - Base de Datos MySQL

Base de datos relacional creada en MySQL Workbench para la materia de BD.

### Tablas
1. *Departamentos* → Guarda los departamentos de la empresa
2. *Empleados* → Empleados ligados a un departamento con FK
3. *Proyectos* → Proyectos asignados a empleados con FK

### Relaciones
- 1 Departamento tiene muchos Empleados
- 1 Empleado tiene muchos Proyectos

### Procedimientos almacenados
```sql
CALL MostrarEmpleados(); -- Muestra todos los empleados
CALL EmpleadosPorDepto(1); -- Empleados del departamento 1  
CALL ContarProyectos(); -- Cuenta proyectos por empleado
