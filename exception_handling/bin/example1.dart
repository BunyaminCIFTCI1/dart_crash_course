// ignore_for_file: unused_local_variable

void main(List<String> args) {
  tryPerson(age: -10);
  tryPerson(age: 130);
}

void tryPerson({int age = 0}) {
  try {
    print(Person(age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
}

class Person {
  final int age;

  Person(this.age) {
    if (age < 0) {
      throw Exception("Age must be positive");
    } else if (age > 120) {
      throw "Age can not be more than 120";
    }
  }
}
