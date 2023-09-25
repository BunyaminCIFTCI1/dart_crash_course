void main(List<String> args) async {
  // Stream<String> names = Stream.fromIterable(["Baran", "Temir"]);

  final list = await getNames().toList(); // getting future from a stream
  print(list);
}

Stream<String> getNames() async* {
  yield "Baran";
  yield "Temir";
  yield "Ben";
}
