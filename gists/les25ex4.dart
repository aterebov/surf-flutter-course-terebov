import 'dart:math';

void main() {
  print(quadratic(4, 2, 1));
  print(quadratic(1, 2, 1));
  print(quadratic(1, 2));
}

// Solution of quadratic presented as a*x*x + b*x + c = 0
String quadratic(double a, [double b = 0, double c = 0]) {
  double discriminant(double a, double b, double c) {
    return b * b - 4 * a * c;
  }

  double x(double a, double b, double d, int index) {
    double valueX = double.nan;
    if (d >= 0) {
      if (index == 1) {
        valueX = (-b + sqrt(d)) / 2 * a;
      } else {
        valueX = (-b - sqrt(d)) / 2 * a;
      }
    }
    return valueX;
  }

  double d = discriminant(a, b, c);
  String strSol =
      "Уравнение ${a == 1 ? '' : (a.toString() + '*')}x*x${b == 0 ? '' : (' + ' + b.toString() + '*x')}${c == 0 ? '' : (' + ' + c.toString())} = 0 ";
  if (d < 0) {
    strSol += "не имеет решения так как его дискриминант меньше нуля";
  } else if (d == 0) {
    strSol += "имеет единственное решение x = ${x(a, b, d, 1)}";
  } else {
    strSol +=
        " имеет два разных корня: x1 = ${x(a, b, d, 1)}, x2 = ${x(a, b, d, 2)}";
  }

  return strSol;
}
