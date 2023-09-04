// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // code below behaves just like what we expect
  // late String name = giveName();

  // print("here");
  // print(name);
// code below may work different than what we expect
  //late String name;
  // name=giveName()
  // print("Here")
}

String giveName() {
  print("function is called");
  return "name";
}
