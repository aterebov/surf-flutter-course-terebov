void main() {
  // Lair v2
  LairV2<Goblin> lairGoblin = LairV2();
  LairV2<Hobogoblin> lairHobogoblin = LairV2();
  // LairV2<Orc> lairOrc = LairV2();
  // Error: Type argument 'Orc' doesn't conform to the bound 'Goblin' of the type variable 'T' on 'LairV2'.

  // Lair v1
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

class LairV2<T extends Goblin> {
  T entity;
}

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
