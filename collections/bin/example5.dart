import 'package:collection/collection.dart';

void main(List<String> args) {
  final set1 = {"a", "b"};
  final set2 = {"a", "b"};
  // if we use normal == sign then we get false so instead of that we can use method below
  final equality = SetEquality().equals(set1, set2);
  print(equality);

  // and remember that: comparison for equality is done via hashCode comparison
}
