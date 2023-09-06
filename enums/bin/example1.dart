// ignore_for_file: unused_local_variable

void main(List<String> args) {
  final person = Person(car: Car.teslaModelX, name: "Ben");
  final person2 = Person(car: Car.teslaModelY, name: "Baran");
}

// below we see the example of enhanced enum
// constructors have to be const
// after last case of enum we have to have a semicolon
// and unfortunately all the cases have to be hardcoded
enum Car {
  teslaModelY(manufacturer: "Tesla", year: 2012, model: "Y"),
  teslaModelX(manufacturer: "Tesla", year: 2020, model: "X");

  final String manufacturer;
  final int year;
  final String model;

  const Car(
      {required this.manufacturer, required this.year, required this.model});

  @override
  String toString() => "manufacturer:$manufacturer,year: $year, model:$model";
}

class Person {
  final String name;
  final Car car;

  const Person({required this.car, required this.name});
}
