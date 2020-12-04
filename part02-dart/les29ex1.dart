import 'dart:io' as io;

void main(List<String> arguments) {
  Future<String> input = readKeyboard();
  input.then((stroke_name) => print("Введена строка $stroke_name"));
  print("Выполнение функции main");
  // Вывод на консоль:
  // Выполнение функции main
  // Введена строка test
}

Future<String> readKeyboard() async {
  return await Future(() {
    return io.stdin.readLineSync();
  });
}
