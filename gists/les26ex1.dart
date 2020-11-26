void main() {
  Student s = Student("Иван", "Петров", 2015);
  print(s.toString());
  // Результат:
  // Иван Петров, год поступления 2015, текущий курс 5
}

class User {
  String firstName;
  String lastName;

  User(this.firstName, this.lastName);

  String toString() {
    return "${firstName} ${lastName}";
  }
}

class Student extends User {
  int yearOfAdmission;
  int _currentCource;

  Student(firstName, lastName, this.yearOfAdmission)
      : super(firstName, lastName) {
    this._currentCource = DateTime.now().year - yearOfAdmission;
    if (this._currentCource < 0) {
      this._currentCource = 0;
    }
  }

  @override
  String toString() {
    return super.toString() +
        ", год поступления ${this.yearOfAdmission.toString()}, текущий курс ${this._currentCource.toString()}";
  }
}
