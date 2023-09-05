// ignore_for_file: unused_local_variable

void main(List<String> args) {
  final Map<String, dynamic> info = {"name": "ben", "age": 23};
  //to get keys and values of a given map we can use .keys and .values getters
  // if we care about putting a non-existing key then we can use method below
  // info.putIfAbsent("height", () => 198);

  // since we can not say final entry in info which we can do for lists, instead we use info.entries to key  each entry one by one
  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }
}
