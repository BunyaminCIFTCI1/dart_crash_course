//ignore_for_file:unused_local_variable

void main(List<String> args) {}

class Person {
  final String name;
  final int age;

  const Person({required this.age, required this.name});
//below we see the example of a named constructor
  // const Person.ben(this.age) : name = "Ben";
  const Person.other({String? name, int? age})
      : name = name ?? "Bob",
        age = age ?? 30;
}



// Note that const constructors can not have a body