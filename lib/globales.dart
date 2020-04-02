import 'package:teotihuacan/dado.dart';

enum Recurso { ORO, CACAO, MADERA, PIEDRA }
enum ColorTemplo { VERDE, AZUL, ROJO }
enum ColorDado { ROJO, AMARILLO, NEGRO, AZUL }

int cuantosDadosDelColor(List<Dado> dados, ColorDado colorDado) {
  int contador = 0;
  for (Dado d in dados) {
    if (d.color == colorDado) contador++;
  }
  return contador;
}

int numeroMenorDelColor(List<Dado> dados, ColorDado colorDado) {
  int menor = 7;
  for (Dado d in dados) {
    if ((d.color == colorDado) && (d.numero < menor)) menor = d.numero;
  }
  if (menor == 7) menor = 0;
  return menor;
}



abstract class Modulo {
  List<Dado> dados;
  Modulo(this.dados);

  // añade el dado a la lista de dados
  // calcula cuantos colores diferentes
  //regresa la cantidad de cacao = numero de colores diferentes +1
  int obtenerCocoa(Dado d) {
    List<ColorDado> coloresDiferentes = [];
    for (Dado d in dados) {
      if (!coloresDiferentes.contains(d.color)) coloresDiferentes.add(d.color);
    }
    if (d != null) dados.add(d);
    return coloresDiferentes.length + 1;
  }
}

abstract class Decoracion {}

abstract class LosetaDescubrimiento {}

abstract class Tecnologia {}

abstract class LosetaComienzo {}

abstract class RoyalTile {} // ! no me gusta el nombre

abstract class LosetaTemplo {}

abstract class LosetaPiramide {}
