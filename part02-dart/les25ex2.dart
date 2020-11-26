void main() {
  List<double> numList = [1, 3, 5.5, 7, 9];
  print(average(numList));
}

double average(List<double> nums) {
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
