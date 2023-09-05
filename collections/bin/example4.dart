// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // below we see the usage of spread operator
  final Set<String> names = {"baran", "ben", "hakan", "melik"};
  final names2 = ["a", "emir", "emere"];
  final names3 = {...names};
  print(names3);
}
