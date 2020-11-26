void main() {
  print(Shape([1, 2, 3]).getBorderCount());
  print(Trapezoid().getBorderCount());
  print(Country([1, 2, 3, 4, 5]).getBorderCount());
  print(Shape().getBorderCount());
  // Результат:
  // 3
  // 4
  // 5
  // 0
}

class Shape with BorderHelper {
  final List borders;

  Shape([this.borders = const []]);
}

class Trapezoid extends Shape {
  Trapezoid() : super([8.0, 5.0, 10.0, 5.0]);
}

class Country with BorderHelper {
  final List borders;

  Country([this.borders = const []]);
}

class BorderHelper {
  List borders;

  int getBorderCount() {
    return borders.length;
  }
}
