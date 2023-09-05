import 'dart:collection';

void main(List<String> args) {
  // To use UnModifiableListView and MapView we use the collection package
// below we see that we can widen a list but its values have to be type of optional variable
  final List<String?> list = ["ben", "baran"];
  list.length = 4;
  print(list[3]);
}
