import 'dart:io' as io;

void main(List<String> arguments) {
  double sum = 0;
  double inputAsDouble = 0;
  var input = "";
  do {
    print("input number or 'stop' for exit:");
    input = io.stdin.readLineSync();

    try {
      inputAsDouble = double.parse(input);
    } catch (e) {
      if (input != "stop") {
        print(e);
      }
      continue;
    }

    sum = sum + inputAsDouble;

    print("Summa of numbers = ${sum}");
  } while (input != "stop");
}
