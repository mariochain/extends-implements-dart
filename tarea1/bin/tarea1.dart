void main() {
  Animal perro = Perro('Toby', 10);
  Animal pez = Pez('Patricio', 5);
  Animal aguila = Aguila('Rateros', 20);
  Animal caballo = Caballo('Caballo h0m053... de las montañas', 15);

  print('${perro.nombre} corre a una velocidad de ${perro.velocidad} km/h');
  print('${perro.nombre} en 2 horas recorre ${perro.distanciaRecorrida(2)} km');
  print('---------------------------------------------------');
  print('${pez.nombre} nada a una velocidad de ${pez.velocidad} km/h');
  print('${pez.nombre} en 2 horas recorre ${pez.distanciaRecorrida(2)} km');
  print('---------------------------------------------------');
  print('${aguila.nombre} vuela a una velocidad de ${aguila.velocidad} km/h');
  print(
      '${aguila.nombre} en 2 horas recorre ${aguila.distanciaRecorrida(2)} km');
  print('---------------------------------------------------');
  print('${caballo.nombre} corre a una velocidad de ${caballo.velocidad} km/h');
  print(
      '${caballo.nombre} en 2 horas recorre ${caballo.distanciaRecorrida(2)} km');
}

// Clase abstracta Animal
abstract class Animal {
  final String nombre;
  final String tipo;
  final double velocidad;

  Animal(this.nombre, this.tipo, this.velocidad);

  double distanciaRecorrida(double tiempo);
}

// Clase Perro que implementa Animal
class Perro implements Animal {
  @override
  final String nombre;
  @override
  final String tipo = 'tierra';
  @override
  final double velocidad;

  Perro(this.nombre, this.velocidad);

  @override
  double distanciaRecorrida(double tiempo) {
    return velocidad * tiempo;
  }
}

// Clase Pez que implementa Animal
class Pez implements Animal {
  @override
  final String nombre;
  @override
  final String tipo = 'agua';
  @override
  final double velocidad;

  Pez(this.nombre, this.velocidad);

  @override
  double distanciaRecorrida(double tiempo) {
    double velocidadModificada = velocidad * 1.05;
    return velocidadModificada * tiempo;
  }
}

// Clase Aguila que hereda de Animal
class Aguila extends Animal {
  Aguila(String nombre, double velocidad) : super(nombre, 'aire', velocidad);

  @override
  double distanciaRecorrida(double tiempo) {
    double velocidadModificada = velocidad * 0.9;
    return velocidadModificada * tiempo;
  }
}

// Clase Caballo que hereda de Animal
class Caballo extends Animal {
  Caballo(String nombre, double velocidad) : super(nombre, 'tierra', velocidad);

  @override
  double distanciaRecorrida(double tiempo) {
    return velocidad * tiempo;
  }
}
