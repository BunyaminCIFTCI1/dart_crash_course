void main(List<String> args) {
  final person = Person("Ben");
  // below we see an overriding case of extensions
  // also a good example to see when we can use extension by its name
  print(ShortDescription(person).description);
}

class Person {
  final String name;
  const Person(this.name);
}

extension ShortDescription on Person {
  String get description => name;
}

extension LongDescription on Person {
  String get description => "the name is $name";
}
