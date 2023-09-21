void main(List<String> args) {
  print("Hello" - "ll");
}

extension Remove on String {
  String operator -(String other) {
    return replaceAll(other, "");
  }
}
