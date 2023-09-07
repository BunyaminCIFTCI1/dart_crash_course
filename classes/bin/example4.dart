// ignore_for_file: prefer_interpolation_to_compose_strings

void main(List<String> args) {
  final person = Person(firstName: "Ben", lastName: "Farmer");
  print(person.fullName);
}

// class Person {
//   final String firstName;
//   final String lastName;

//   const Person({required this.firstName, required this.lastName});

//   String get fullName =>firstName+" "+lastName
// }
// below is just an alternative to using getter shown above
// if code is something heavy work then prefer constructor instead of getters
class Person {
  final String firstName;
  final String lastName;
  final String fullName;
  const Person({required this.firstName, required this.lastName})
      : fullName = "$firstName $lastName";
}
