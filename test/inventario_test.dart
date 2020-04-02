import 'package:teotihuacan/inventario.dart';
import 'package:test/test.dart';

void main() {
  group('Clase inventario', () {
    test('suma', () {
      Inventario i1 = Inventario();
      Inventario i2 = Inventario(cacao: 1, oro: 2, piedra: 3, madera: 4);
      Inventario i3 = i1 + i2;
      expect(i3, Inventario(cacao: 1, oro: 2, piedra: 3, madera: 4));
    });
    test('igualdad', () {
      Inventario i1 = Inventario(cacao: 1, piedra: 3, madera: 4);
      Inventario i2 = Inventario(cacao: 1, piedra: 3, madera: 4);
      expect(i1, equals(i2));
    });
    test('>= ambos son iguales', () {
      Inventario i1 = Inventario(cacao: 1, piedra: 3, madera: 4);
      Inventario i2 = Inventario(cacao: 1, piedra: 3, madera: 4);
      expect(i1, greaterThanOrEqualTo(i2));
    });
     test('>= el segundo es menor', () {
      Inventario i1 = Inventario(cacao: 1,  piedra: 3, madera: 4);
      Inventario i2 = Inventario(cacao: 0,  piedra: 3, madera: 4);
      expect(i1, greaterThanOrEqualTo(i2));
    });
  });
}
