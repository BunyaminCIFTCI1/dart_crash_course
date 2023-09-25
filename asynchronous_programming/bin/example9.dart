import 'dart:async';

void main(List<String> args) async {
  await for (final name in names.capitalized) {
    print(name);
  }
}

Stream<String> names = Stream.fromIterable(["Baran", "Emir", "Ben"]);

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((event) => event.toUpperCase());
  }
}

extension on Stream<String> {
  Stream<String> get capitalized => transform(ToUpperCase());
  Stream<String> get getCapitalizedWithMap =>
      map((event) => event.toUpperCase());
}
