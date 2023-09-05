// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // Iterables are generated lazily and they are initialized when they are used
  // But lists  are initialized directly and we can see the difference at the code below
  final iterable = Iterable.generate(20, giveSomething);
  final list = List.generate(20, (index) => giveSomething(index));

  for (final it in iterable.take(2)) {
    print(it);
  }
  for (final l in list) {
    print(l);
  }
}

String giveSomething(int index) {
  print("function is called");
  return "John: $index";
}
