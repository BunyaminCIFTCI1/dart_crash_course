void main(List<String> args) async {
  // and of course await for can not be used for futures
  await for (final value in getNumbers()) {
    print(value);
  }
}

// future=sec-------x
//stream=sec----x-----sec------x----sec----x

// to use the keyword yield we add the asterics after async keyword
Stream<int> getNumbers() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
