void main(List<String> args) {
  final person = Person();
  person.walk(speed: 10);
}

mixin HasSpeed {
  //  inside a class we can not use abstract like that but we can do it inside an abstract class
  abstract double
      speed; // any object that will use this mixin has to implement that property
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print("$runtimeType is jumping at the speed of $speed");
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print("$runtimeType is walking at the speed of $speed");
    this.speed = speed;
  }
}

// just like below parent mixin has to come first and it has to be written with its submixins
class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0;
}
