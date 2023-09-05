void main(List<String> args) {
  // Iterables are very useful to not consume all the potential
  // for example at the code below it generates the iterable only for needed amount which is only 2
  const names = ["ben", "baran", "emir", "temir"];
  final iterable = names.map((e) {
    print("function is called");
    return e.toUpperCase();
  });
  for (final it in iterable.take(2)) {
    print(it);
  }
}
