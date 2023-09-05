// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // here we see a good usage of overriding equality operator
  Person person1 = Person(name: "ben", age: 12);
  Person person2 = Person(name: "ben", age: 12);
  print(person1 == person2);
}

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return "Person: $name, $age";
  }

  @override
  int get hashCode {
    return Object.hash(name, age);
  }

  @override
  bool operator ==(Object other) {
    return identical(this,
            other) || // identical returns true if other and this  object are assigned to each other
        other is Person && other.name == name && other.age == age;
  }
}
