void main(List<String> args) {
  final one = KeyValue("name", "ben");
  print(one);
}

typedef KeyValue<T, K> = MapEntry<T, K>;
