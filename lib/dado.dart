import 'package:teotihuacan/globales.dart';

class Dado {
  int numero;
  ColorDado color;

  Dado(this.numero, this.color) : assert((numero >= 1) && (numero <= 6));
}
