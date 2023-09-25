void main(List<String> args) async {
  // print(await giveHello());without await keyword we can not read the value
  // we can also do like below but it will not wait until the execution is finished but which is possible with await
  // giveHello().then((value) => print(value));
}

// to return a value from function below we have to use keyword async
// to read the value that returned from func below we have to await keyword in the main function
Future<String> giveHello() async {
  return "Hello";
}

// async value below does not really do anything
Future<String> giveHi() async {
  return Future.delayed(const Duration(seconds: 2), () => "Hi");
}
