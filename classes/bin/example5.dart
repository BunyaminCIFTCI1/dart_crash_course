void main(List<String> args) {
  final car = Car();
  car.speed = 10; // setter is called
  print(car.speed); // getter is called
}

// as shown code below firstly closest variable is choosen
// class Car {
//   int speed = 0;

//   void some(int speed) {
//     print(speed);
//   }
// }

class Car {
  int _speed = 0;

  int get speed => _speed;
  set speed(int newSpeed) {
    _speed = newSpeed;
  }
}
