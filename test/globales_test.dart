import 'package:teotihuacan/bosque.dart';
import 'package:teotihuacan/dado.dart';
import 'package:teotihuacan/globales.dart';
import 'package:test/test.dart';

class L extends LosetaDescubrimiento {}

void main() {
  group('cuantos dados del color', () {
    test('no dados', () {
      expect(cuantosDadosDelColor([], ColorDado.AMARILLO), 0);
    });
    test('un dado', () {
      expect(
          cuantosDadosDelColor(
              [Dado(1, ColorDado.AMARILLO)], ColorDado.AMARILLO),
          1);
    });
    test('dos del mismo color', () {
      expect(
          cuantosDadosDelColor(
              [Dado(1, ColorDado.AMARILLO), Dado(1, ColorDado.AMARILLO)],
              ColorDado.AMARILLO),
          2);
    });
    test('dos de diferente color pero pido de un tercero', () {
      expect(
          cuantosDadosDelColor(
              [Dado(1, ColorDado.AZUL), Dado(1, ColorDado.ROJO)],
              ColorDado.AMARILLO),
          0);
    });
    test('dos de diferente color ', () {
      expect(
          cuantosDadosDelColor(
              [Dado(1, ColorDado.AZUL), Dado(1, ColorDado.ROJO)],
              ColorDado.AZUL),
          1);
    });
    test('5 repitiendo un color, pido de 1', () {
      expect(
          cuantosDadosDelColor([
            Dado(1, ColorDado.AZUL),
            Dado(1, ColorDado.ROJO),
            Dado(2, ColorDado.NEGRO),
            Dado(3, ColorDado.AMARILLO),
            Dado(3, ColorDado.AZUL)
          ], ColorDado.ROJO),
          1);
    });
    test('5 repitiendo un color, pido de 2', () {
      expect(
          cuantosDadosDelColor([
            Dado(1, ColorDado.AZUL),
            Dado(1, ColorDado.ROJO),
            Dado(2, ColorDado.NEGRO),
            Dado(3, ColorDado.AMARILLO),
            Dado(3, ColorDado.AZUL)
          ], ColorDado.AZUL),
          2);
    });
  });

  group('Número menor del color', () {
    test('No hay dados', () {
      expect(numeroMenorDelColor([], ColorDado.ROJO), 0);
    });
    test('Solo un dado', () {
      expect(numeroMenorDelColor([Dado(1, ColorDado.ROJO)], ColorDado.ROJO), 1);
    });
    test('Solo un dado pero no es del color', () {
      expect(numeroMenorDelColor([Dado(1, ColorDado.ROJO)], ColorDado.AZUL), 0);
    });
    test('3 dados pero solo uno del color ', () {
      expect(
          numeroMenorDelColor([
            Dado(1, ColorDado.ROJO),
            Dado(2, ColorDado.AZUL),
            Dado(3, ColorDado.NEGRO)
          ], ColorDado.NEGRO),
          3);
    });
    test('3 dados del mismo valores menor al final', () {
      expect(
          numeroMenorDelColor([
            Dado(3, ColorDado.NEGRO),
            Dado(2, ColorDado.NEGRO),
            Dado(1, ColorDado.NEGRO)
          ], ColorDado.NEGRO),
          1);
    });
    test('3 dados del mismo valores menor al principio', () {
      expect(
          numeroMenorDelColor([
            Dado(1, ColorDado.NEGRO),
            Dado(2, ColorDado.NEGRO),
            Dado(3, ColorDado.NEGRO)
          ], ColorDado.NEGRO),
          1);
    });
    test('3 dados del mismo valores menor en medio', () {
      expect(
          numeroMenorDelColor([
            Dado(1, ColorDado.NEGRO),
            Dado(2, ColorDado.NEGRO),
            Dado(3, ColorDado.NEGRO)
          ], ColorDado.NEGRO),
          1);
    });
    test('6 dados 4 colores 2 con el mismo número', () {
      expect(
          numeroMenorDelColor([
            Dado(1, ColorDado.NEGRO),
            Dado(2, ColorDado.NEGRO),
            Dado(3, ColorDado.AZUL),
            Dado(1, ColorDado.AMARILLO),
            Dado(2, ColorDado.ROJO),
            Dado(2, ColorDado.ROJO),
          ], ColorDado.ROJO),
          2);
    });
     test('6 dados 4 colores 2 con diferente número', () {
      expect(
          numeroMenorDelColor([
            Dado(1, ColorDado.NEGRO),
            Dado(2, ColorDado.NEGRO),
            Dado(3, ColorDado.AZUL),
            Dado(1, ColorDado.AMARILLO),
            Dado(2, ColorDado.ROJO),
            Dado(3, ColorDado.ROJO),
          ], ColorDado.ROJO),
          2);
    });
  });

  group('Regresa el cacao', () {
    test('no ha dados', () {
      Bosque b = Bosque(L(), []);
      expect(b.obtenerCocoa(null), equals(1));
    });
    test('solo un dado', () {
      Bosque b = Bosque(L(), [Dado(4, ColorDado.AMARILLO)]);
      expect(b.obtenerCocoa(null), equals(2));
    });
    test('dos dados mismo color', () {
      Bosque b = Bosque(
          L(), [Dado(4, ColorDado.AMARILLO), Dado(1, ColorDado.AMARILLO)]);
      expect(b.obtenerCocoa(null), equals(2));
    });
    test('tres dados, dos del mismo color', () {
      Bosque b = Bosque(L(), [
        Dado(1, ColorDado.AMARILLO),
        Dado(1, ColorDado.AMARILLO),
        Dado(5, ColorDado.AZUL)
      ]);
      expect(b.obtenerCocoa(null), equals(3));
    });
    test('cuatro dados, dos y dos de cada color', () {
      Bosque b = Bosque(L(), [
        Dado(1, ColorDado.NEGRO),
        Dado(1, ColorDado.NEGRO),
        Dado(2, ColorDado.ROJO),
        Dado(5, ColorDado.ROJO)
      ]);
      expect(b.obtenerCocoa(null), 3);
    });
    test('cuatro dados, tres y uno  de cada color', () {
      Bosque b = Bosque(L(), [
        Dado(1, ColorDado.NEGRO),
        Dado(1, ColorDado.NEGRO),
        Dado(2, ColorDado.NEGRO),
        Dado(5, ColorDado.ROJO)
      ]);
      expect(b.obtenerCocoa(null), 3);
    });
    test('cuatro dados, todos diferentes', () {
      Bosque b = Bosque(L(), [
        Dado(1, ColorDado.AMARILLO),
        Dado(1, ColorDado.AZUL),
        Dado(1, ColorDado.NEGRO),
        Dado(1, ColorDado.ROJO)
      ]);
      expect(b.obtenerCocoa(null), 5);
    });
    test('5 dados, 1 color repetido', () {
      Bosque b = Bosque(L(), [
        Dado(1, ColorDado.AMARILLO),
        Dado(1, ColorDado.AMARILLO),
        Dado(2, ColorDado.AZUL),
        Dado(3, ColorDado.NEGRO),
        Dado(4, ColorDado.ROJO),
      ]);
      expect(b.obtenerCocoa(null), 5);
    });
  });
}
