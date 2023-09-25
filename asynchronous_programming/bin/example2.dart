void main(List<String> args) async {
  // print(await getFullLength(await getFullName()));
  // below we have another way to do action above
// and below instead of using await we can just add another then expression
  final length = await getFullName().then((value) => getFullLength(value));
  print(length);
}

Future<String> getFullName() {
  return Future.delayed(const Duration(seconds: 1), () => "Benjamin");
}

Future<int> getFullLength(String value) {
  return Future.delayed(const Duration(seconds: 1), () => value.length);
}
