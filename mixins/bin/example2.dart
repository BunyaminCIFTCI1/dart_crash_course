void main(List<String> args) {
  final person = Person(firstName: "Ben", lastName: "Farmer");
  print(person.fullName);
}

mixin HasFirstName {
  String
      get firstName; // this one also a contract for the class that uses it to reimplement the getter to read the value from it
  // which means it does not have to a getter again. It can be a final property , as well
}
mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => "$firstName $lastName";
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person({required this.firstName, required this.lastName});
}
