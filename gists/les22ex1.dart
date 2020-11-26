int a = 10;
void main() {
  double b;
  var text = "TestString";

  // text = a;
  // Выводит в консоль сообщение об ошибке компиляции:
  // les22ex1.dart:5:10: Error: A value of type 'int' can't be assigned to a variable of type 'String'.

  dynamic dyn = 10;
  dyn = text;
  print("dyn = ${dyn}");
  // dyn стал строковой переменной со значением text

  // Значение final может быть вычислено и будет зафиксировано на этапе выполнения
  final String fin = dyn;
  print("fin = ${fin}");
  // fin = "s2";
  // Ошибка компиляции
  // les22ex1.dart:17:3: Error: Can't assign to the final variable 'fin'.

  // Значение const будет зафиксировано на этапе компиляции
  const double con = 3.14;
  // con = 3.141;
  // Ошибка компиляции
  // les22ex1.dart:24:3: Error: Can't assign to the const variable 'con'.

  // ВОПРОС
  // Почему, если если разделить объявление и инициализацию переменной var - она ведет себя как dynamic ?
  // В уроке написано "При первой инициализации переменной происходит запоминание присваемого типа. Дальнейшее изменение типа уже невозможно"
  var text2;
  text2 = "TestString2";
  print("text2 = ${text2}");
  text2 = a;
  print("text2 = ${text2}");
}
