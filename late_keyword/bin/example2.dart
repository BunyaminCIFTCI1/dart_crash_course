// ignore_for_file:unused_local_variable

void main(List<String> args) {
  // late variables can be assigned only ot late variables which means code below gives an error
  // late String name;
  // String otherName = name;

  // in the code below since name initialized with Hello then giveName function is not gonna be executed
  // late String name = giveName();
  // name = "Hello";
  // print(name);
}

String giveName() {
  print("function is called");
  return "name";
}
