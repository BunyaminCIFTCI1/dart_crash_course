void main(List<String> args) {
  final v = Vehicle(2);
  print(v);
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() {
    return "A vehicle with $wheelCount wheels";
  }
}

// below we see a good example for constructors in inheritance
// class Car extends Vehicle {
//   // const Car() : super(4);
//   // const Car(super.wheelCount);
// }
// below code is another choice but reduntant
// class Car extends Vehicle {
//   final int count;
//   const Car(this.count) : super(count);
// }

class Car extends Vehicle {
  const Car(
      super.wheelCount); // only in constructor we have to use keyword super
  // otherwise we can directly use variable name just like below

  void s() {
    print(wheelCount);
  }
}
