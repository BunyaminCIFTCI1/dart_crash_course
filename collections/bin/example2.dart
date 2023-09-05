// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // below in the first print statement we get true but in the second one we get false
  // that is another distinction between final and const data types
  // but for String and int and other simple data types there is no such an issue
  const names = ["ben", "hakan", "emre", "baran"];
  const names2 = ["ben", "hakan", "emre", "baran"];
  print(names == names2);

  final names3 = ["ben", "hakan", "emre", "baran"];
  final names4 = ["ben", "hakan", "emre", "baran"];
  print(names == names2);
}
