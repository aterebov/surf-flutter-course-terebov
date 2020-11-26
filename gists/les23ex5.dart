void main() {
  String text = "She sells sea shells on the sea shore "
      "The shells that she sells are sea shells I'm sure "
      "So if she sells sea shells on the sea shore "
      "I'm sure that the shells are sea shore shells";

  text = text.toLowerCase();

  List listWord = text.split(" ");
  // print(listWord);

  Set setUniqueWord = listWord.toSet();
  // print(setUniqueWord);

  print("Number of unique words: ${setUniqueWord.length}");
}
