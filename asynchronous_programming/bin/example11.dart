import 'dart:async';

void main(List<String> args) async {
// if we do below we get an error because below we can listen for the stream only once
  // try {
  //   await for (final name in controller.stream) {
  //     print(name);
  //     await for (final name in controller.stream) {
  //       print(name);
  //     }
  //   }
  // } catch (e) {
  //   print(e);
  // }
  final controller = StreamController.broadcast();
  final sub1 = controller.stream.listen((event) {
    print(event);
  });
  final sub2 = controller.stream.listen((event) {
    print(event);
  });
  controller.sink.add("Baran");
  controller.sink.add("Ben");
  controller.sink.add("Emir");
  controller.close();

  controller.onCancel = () {
    sub1.cancel();
    sub2.cancel();
  };
}
