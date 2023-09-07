void main(List<String> args) {
  final car = Car();
  print(car);
}

// below we see that if subclass has the same method then its method becomes executed first

class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString() {
    return "A $runtimeType with $wheelCount wheels";
  }
}

class Car extends Vehicle {
  const Car() : super(4);

  @override
  String toString() {
    return "with $wheelCount wheels";
  }
}
