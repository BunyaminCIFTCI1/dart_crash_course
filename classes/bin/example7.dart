void main(List<String> args) {
  final car = Vehicle.car();
  print(car);
}

// normal constructors can create the instance of that class but factory constructors can create instances of subclasses,too

class Vehicle {
  const Vehicle();
  // as shown below we can not return something other than class itself or subclass of a class
  // factory Vehicle.number() => 1;
  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() {
    return "Vehicle of $runtimeType";
  }
}

class Car extends Vehicle {}

class Truck extends Vehicle {}
