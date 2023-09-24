void main(List<String> args) {
  // if we do not create another try catch statement then the exception that has been thrown from rethrow statement below is not gonna be handled
  try {
    tryCreatingPerson(-1);
  } catch (e) {
    print(e);
  }
}

class Person {
  final int age;
  Person(this.age) {
    if (age < 0) {
      throw Exception("Age can not be negative");
    }
  }
}

void tryCreatingPerson(int age) {
  try {
    print(Person(age).age);
  } catch (e) {
    // if we do not want our exception to be handled here then we use rethrow to send to other region which it is gonna be handled
    rethrow;
  }
}
