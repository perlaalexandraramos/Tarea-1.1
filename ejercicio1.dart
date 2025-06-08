void main() {
  int n1 = 0;
  int n2 = 1;
  print("Sucesion de Fibonacci (primeros 15 numeros):");
  for (int i = 0; i < 15; i++) {
    print(n1);
    int sig = n1 + n2;
    n1 = n2;
    n2 = sig;
  }
  }