void main() {
  Lair lair = Lair();

  lair.Spawn(Goblin());
  lair.Spawn(Hobogoblin());
  lair.Spawn(Orc());
  // Результат:
  // Goblin is spawned in lair
  // Hobogoblin is spawned in lair
  // Ошибка: type 'Orc' is not a subtype of type 'Goblin'
}

class Goblin {}

class Hobogoblin extends Goblin {}

class Orc {}

class Lair<T extends Goblin> {
  List<T> listEntity = [];

  void Spawn(entity) {
    try {
      listEntity.add(entity);
      print("${entity.runtimeType} is spawned in lair");
    } catch (e) {
      print("Ошибка: $e");
    }
  }
}
