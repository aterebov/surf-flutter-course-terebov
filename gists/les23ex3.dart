void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8];

  print("Length list: ${list.length}");

  list.sort((a, b) => b.compareTo(a));
  print(list);

  var newList = list.sublist(0, 3);
  print(newList);

  print("Index of value 5: ${list.indexOf(5)}");

  list.removeRange(0, 4);
  print(list);
}
