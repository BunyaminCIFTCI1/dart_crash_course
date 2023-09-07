// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // below as wee see when we change name property of a person then only name of that copy changes
  //in other words the original class is not effected
  final person1 = Person();
  person1.name = "Baran";
  final person2 = Person();
  person2.name = "Emir";
// static variables are changed in all the copies at the same time
// static variables are used without instancing the class

  final car1 = Car(name: "BMW");
  final car2 = Car(name: "Mercedes");
  final car3 = Car(name: "Audi");
  print(Car.carInstantiated);
}

class Person {
  String name = "Ben";
}

class Car {
  static int _carInstantiated = 0;

  static int get carInstantiated => _carInstantiated;
  static void incrementCarInstantiated() => _carInstantiated++;

  final String name;
  Car({required this.name}) {
    incrementCarInstantiated();
  }
}
