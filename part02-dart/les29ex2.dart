import 'dart:io' as io;

void main(List<String> arguments) {
  Stream inputStream = readKeyboard();
  inputStream.listen((stroke_name) => print("Введена строка $stroke_name"));
  print("Выполнение функции main");
  // Вывод на консоль:
  // Выполнение функции main
  // Введена строка 123
  // Введена строка qwerty
  // Введена строка exit
}

Stream readKeyboard() async* {
  String input;
  do {
    input = await Future(() {
      return io.stdin.readLineSync();
    });
    yield input;
  } while (input != 'exit');
}
