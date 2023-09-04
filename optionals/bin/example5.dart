// ignore_for_file: unused_local_variable

void main(List<String> args) {
  final String? str = giveOptionalText();
  str.describe();
}

String? giveOptionalText() {
  return null;
}

String giveText() {
  return "text";
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print("Object is null");
    } else {
      print("object is not null");
    }
  }
}
