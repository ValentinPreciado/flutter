import 'package:teotihuacan/dado.dart';

import 'globales.dart';

class Bosque extends Modulo {
  LosetaDescubrimiento descubrimiento;
  ColorTemplo templo;
  
  Bosque(LosetaDescubrimiento d, List<Dado> dados):super(dados) {
    this.templo = ColorTemplo.ROJO;
    descubrimiento = d;
  }

}
