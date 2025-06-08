void main() {
  List<int> listaOriginal = [1, 2, 2, 3, 4, 4, 5, 1, 6, 7, 7, 8];
  List<int> listaUnica = [];

  for (int numero in listaOriginal) {
    if (!listaUnica.contains(numero)) {
      listaUnica.add(numero);
    }
  }

  print("Lista original:");
  print(listaOriginal);
  print("");
  print("Lista con elementos únicos:");
  print(listaUnica);
}

