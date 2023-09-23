void main(List<String> args) {}

mixin HasHeight<T extends num> {
  T get height;
}

class Person with HasHeight {
  @override
  final double height;
  const Person(this.height);
}
