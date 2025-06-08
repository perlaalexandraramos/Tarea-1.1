class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
    }
  }

  bool retirar(double cantidad) {
    if (cantidad > 0 && saldo >= cantidad) {
      saldo -= cantidad;
      return true; 
    }
    return false; 
  }

  double consultarSaldo() {
    return saldo;
  }
}

void main() {
  CuentaBancaria cuenta = CuentaBancaria('Perla Ramos', 1000);

  cuenta.depositar(500);
  print('Saldo después del depósito: \$${cuenta.consultarSaldo()}');

  bool retiroExitoso = cuenta.retirar(1200);
  if (retiroExitoso) {
    print('Retiro exitoso. Saldo actual: \$${cuenta.consultarSaldo()}');
  } else {
    print('Saldo insuficiente para el retiro.');
  }

  retiroExitoso = cuenta.retirar(200);
  if (retiroExitoso) {
    print('Retiro exitoso. Saldo actual: \$${cuenta.consultarSaldo()}');
  } else {
    print('Saldo insuficiente para el retiro.');
  }
}
