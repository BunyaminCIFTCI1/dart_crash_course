// ignore_for_file:unused_local_variable
void main(List<String> args) {
  // below we see we have a problem regarding the change of names1 which we did not really want
  //that is why we use spread operator instead
  final names1 = ["ben", "baran"];
  final names2 = ["temir", "emir"];
  final names3 = names1;
  names3.addAll(names2);
  print(names1);
}
