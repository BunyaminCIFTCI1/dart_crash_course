void main(List<String> args) {
  final cats = {
    Cat(name: "katty", age: 2),
    Cat(name: "katty2", age: 4),
    Cat(name: "katty", age: 2),
  };

  cats.forEach(print);
}

enum PetType {
  dog,
  cat,
  fish,
}

mixin Pet {
  // again and againg remember good side of mixins is they create a contract for getters to implement them in the future
  String get name;
  int get age;
  PetType get type;

  @override
  String toString() {
    return "Pet: $type, age:$age, name:$name";
  }

// with implementing hashCode like that , at the set in the main function two different classes are behavied the same
  @override
  int get hashCode => Object.hash(name, age, type);

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with Pet {
  @override
  final String name;

  @override
  final int age;
  @override
  final PetType type;

  const Cat({required this.name, required this.age}) : type = PetType.cat;
}
