import 'dart:async';

void main(List<String> args) async {
  final controller = StreamController<String>();
  controller.sink.add("Hello");
  controller.sink.add("World");

  await for (final str in controller.stream) {
    print(str);
  }
}


// Stream is read only but StreamController is both read and write


