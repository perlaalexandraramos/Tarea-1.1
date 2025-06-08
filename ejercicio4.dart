class Libro {
  String titulo;
  String autor;
  int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);
}

class Biblioteca {
  List<Libro> libros = [];

  void agregarLibro(Libro libro) {
    libros.add(libro);
  }

  void eliminarLibro(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
  }

  List<Libro> buscarPorAutor(String autor) {
    return libros.where((libro) => libro.autor == autor).toList();
  }

  List<Libro> listarPorAnio() {
    List<Libro> copiaLibros = List.from(libros);
    copiaLibros.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return copiaLibros;
  }
}

void main() {
  Biblioteca miBiblioteca = Biblioteca();

  // Agregar libros
  miBiblioteca.agregarLibro(Libro('Cien Años de Soledad', 'Gabriel García Márquez', 1967));
  miBiblioteca.agregarLibro(Libro('1984', 'George Orwell', 1949));
  miBiblioteca.agregarLibro(Libro('El Amor en los Tiempos del Cólera', 'Gabriel García Márquez', 1985));

  // Buscar libros por autor
  List<Libro> librosDeGabriel = miBiblioteca.buscarPorAutor('Gabriel García Márquez');
  print('Libros de Gabriel García Márquez:');
  for (var libro in librosDeGabriel) {
    print('- ${libro.titulo} (${libro.anioPublicacion})');
  }

  // Listar todos los libros ordenados por año
  List<Libro> librosOrdenados = miBiblioteca.listarPorAnio();
  print('\nLibros ordenados por año de publicación:');
  for (var libro in librosOrdenados) {
    print('- ${libro.titulo} (${libro.anioPublicacion})');
  }

  // Eliminar un libro
  miBiblioteca.eliminarLibro('1984');
  print('\nLibros después de eliminar "1984":');
  for (var libro in miBiblioteca.libros) {
    print('- ${libro.titulo} (${libro.anioPublicacion})');
  }
}

