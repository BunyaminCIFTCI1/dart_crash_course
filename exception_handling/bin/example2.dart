// ignore_for_file: unused_catch_stack

void main(List<String> args) {
  tryCreatingPerson(140);
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException({required this.age, required this.message});

  @override
  String toString() {
    return "InvalidAgeException :$message, $age";
  }
}

class Person {
  final int age;
  Person(this.age) {
    if (age < 0) {
      throw InvalidAgeException(age: age, message: "Age can not be negative");
    } else if (age > 120) {
      throw InvalidAgeException(
          age: age, message: "Age can not be more than 120");
    }
  }
}

void tryCreatingPerson(int age) {
  try {
    print(Person(age).age);
  } on InvalidAgeException catch (e, stcktrc) {
    // because e is InvalidAgeException e
    print(e.message);
    print(e.age);
    // print(stcktrc);
  }
}
