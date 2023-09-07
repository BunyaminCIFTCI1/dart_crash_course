void main(List<String> args) {
  final car = Car();
  car.accelerate();
}

enum VehicleKind {
  truck,
  car,
}

abstract class Vehicle {
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void accelerate() => print("Vehicle is accelerating");
  void decelerate() => print("Vehicle is decelerating");
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
  @override
  void accelerate() => print("Car is accelerating");
  @override
  void decelerate() => print("Car is decelerating");
}

class Truck implements Vehicle {
  @override
  void accelerate() {
    print("Truck is accelerating");
  }

  @override
  void decelerate() {
    print("Truck is decelerating");
  }

// as shown below both defining properties or getters are fine
  // @override
  // VehicleKind get kind => VehicleKind.truck;
  @override
  final VehicleKind kind;
  const Truck(this.kind);
}
