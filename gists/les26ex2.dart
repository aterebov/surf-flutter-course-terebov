void main() {
  Bike b = Bike();
  b.run();
  b.turn("left");
  b.turn("up");
  b.turn("right");
  b.turn("up");
  // b.turn("down");
  b.stop();

  // Результат:
  // колесо переднее начало вращение
  // колесо заднее начало вращение
  // Велосипед пришел в движение
  // налево
  // прямо
  // направо
  // прямо
  // колесо переднее остановилось
  // колесо заднее остановилось
  // Велосипед остановлен
}

class Bike {
  Whell _wheel1 = Whell("переднее");
  Whell _wheel2 = Whell("заднее");
  Controller _controller = Controller();

  void run() {
    _wheel1.rotate();
    _wheel2.rotate();
    print("Велосипед пришел в движение");
  }

  void stop() {
    _wheel1.stop();
    _wheel2.stop();
    print("Велосипед остановлен");
  }

  void turn(String side) {
    _controller.turn(side);
  }
}

class Whell {
  String _name;

  Whell(this._name);

  void rotate() {
    print("колесо $_name начало вращение");
  }

  void stop() {
    print("колесо $_name остановилось");
  }
}

class Controller {
  void turn(String side) {
    Map direction = {
      "left": "налево",
      "right": "направо",
      "up": "прямо",
    };
    print(direction[side]);
  }
}
