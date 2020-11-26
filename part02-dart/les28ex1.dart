void main() {
  int i = 12;
  double d = 5.25;
  bool b = true;
  List l = [1, 2, 3];

  Tools t = Tools();
  print(
      "Value: ${t.convertToString(i)}   Type: ${t.convertToString(i).runtimeType}");
  print(
      "Value: ${t.convertToString(d)}   Type: ${t.convertToString(d).runtimeType}");
  print(
      "Value: ${t.convertToString(b)}   Type: ${t.convertToString(b).runtimeType}");
  print(
      "Value: ${t.convertToString(l)}   Type: ${t.convertToString(l).runtimeType}");
  // Результат
  // Value: 12   Type: String
  // Value: 5.25   Type: String
  // Value: true   Type: String
  // Value: [1, 2, 3]   Type: String
}

class Tools {
  String convertToString<T>(T arg) {
    return arg.toString();
  }
}
