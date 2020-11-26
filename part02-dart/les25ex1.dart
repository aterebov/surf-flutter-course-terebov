void main() {
  String a = "hello world";
  rev(a);
}

void rev(String str) {
  String revStr = str.split(" ").reversed.join(" ");
  // print(revStr);
}
