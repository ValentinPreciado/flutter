class Inventario {
  int oro;
  int piedra;
  int cacao;
  int madera;
  Inventario({this.oro = 0, this.piedra = 0, this.cacao = 0, this.madera = 0});

  Inventario operator +(Inventario i) => Inventario(
      oro: oro + i.oro,
      piedra: piedra + i.piedra,
      cacao: cacao + i.cacao,
      madera: madera + i.madera);
  bool operator ==(Object i) => (i is Inventario &&
      this.oro == i.oro &&
      this.piedra == i.piedra &&
      this.madera == i.madera &&
      this.cacao == i.cacao);

  bool operator >=(Inventario i) => (this.oro >= i.oro &&
      this.piedra >= i.piedra &&
      this.madera >= i.madera &&
      this.cacao >= i.cacao);

  bool operator >(Inventario i) => (this.oro > i.oro &&
      this.piedra > i.piedra &&
      this.madera > i.madera &&
      this.cacao > i.cacao);

  bool operator <(Inventario i) => (this.oro < i.oro &&
      this.piedra < i.piedra &&
      this.cacao < i.cacao &&
      this.madera < i.madera);

  bool operator <=(Inventario i) => (this.oro <= i.oro &&
      this.madera <= i.madera &&
      this.piedra <= i.piedra &&
      this.cacao <= i.cacao);

  int get hashCode =>
      oro.hashCode ^ cacao.hashCode ^ madera.hashCode ^ piedra.hashCode;

  @override
  String toString() =>
      'Inventario: oro:$oro, piedra:$piedra, madera:$madera, cacao:$cacao';
}
