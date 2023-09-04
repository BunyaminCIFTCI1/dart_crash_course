void main(List<String> args) {
  // name does not give an error
  // String? name;
  // print(name);
  // but name2 gives an error because it is final and has to be assigned manually
  // final String? name2;
  // print(name2);
  // code below also works because it is assigned manually not automatically
  final String? name3 = null;
  print(name3);
}
