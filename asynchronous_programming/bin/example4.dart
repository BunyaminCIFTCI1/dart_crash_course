void main(List<String> args) async {
  // asyncExpand is then function version of Futures
  await for (final character
      in getNames().asyncExpand((name) => getCharacters(name))) {
    print(character);
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(milliseconds: 200));
  yield "Ben";
  await Future.delayed(const Duration(milliseconds: 200));
  yield "Sen";
}

Stream<String> getCharacters(String value) async* {
  for (int i = 0; i < value.length; i++) {
    await Future.delayed(const Duration(milliseconds: 300));
    yield value[i];
  }
}
