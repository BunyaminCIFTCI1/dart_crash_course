void main(List<String> args) {
  const names = ["Ben", "Baran", "Emir"];
  print(names * 4);
}

extension Times on List {
  List operator *(int times) {
    final list = [];
    for (int i = 0; i < times; i++) {
      list.addAll(this);
    }
    return list;
  }
}
