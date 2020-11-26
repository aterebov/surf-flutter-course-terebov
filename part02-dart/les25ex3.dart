void main() {
  String a = "hello world";
  rev(a);
  rev();

  List<double> numList = [1, 3, 5.5, 7, 9];
  print(average(numList));
  print(average());
}

void rev([String str = "empty string"]) {
  String revStr = str.split(" ").reversed.join(" ");
  print(revStr);
}

double average([List<double> nums = const []]) {
  double sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  // double avg = 0;
  // if (nums.length != 0) {
  //   avg = sum / nums.length;
  // }
  // return avg;
  return sum / nums.length;
}
