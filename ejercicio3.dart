class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double calcularSalarioTotal(List<Empleado> empleados) {
  double total = 0;
  for (var empleado in empleados) {
    total += empleado.salario;
  }
  return total;
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) {
    return 0;
  }
  double total = calcularSalarioTotal(empleados);
  return total / empleados.length;
}

void main() {
  List<Empleado> empleados = [];

  empleados.add(Empleado('Ana', 'Gerente', 5000));
  empleados.add(Empleado('Luis', 'Analista', 3000));
  empleados.add(Empleado('Marta', 'Asistente', 2000));

  double total = calcularSalarioTotal(empleados);
  double promedio = calcularSalarioPromedio(empleados);

  print('Salario total: \$${total}');
  print('Salario promedio: \$${promedio}');
}




