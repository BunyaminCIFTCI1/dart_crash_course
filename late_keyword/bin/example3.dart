// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // late final= correct  final late=wrong
  // we shouldn't initialize late variables inside the constructors because they are not gonna be initialized lazily
}
