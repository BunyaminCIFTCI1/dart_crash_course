void main(List<String> args) {
  // set_name.addAll(listName) still adds list as set element to our set
  final list = [1, 4, 5];
  final list2 = [5, 8, 9];
  final set = {...list}..addAll(list2);
// we can create our lists ,sets or maps just like below
// be careful about not using curly braces aroung for loops and if statements otherwise we get weird results
  final iterable = Iterable.generate(100);
  final evenNumbers = [
    for (final number in iterable)
      if (number % 2 == 0) number
  ];
  // below example is for creating maps
  const names = ["ben", "baran", "emir"];
  var map = {for (final name in names) name: name.length};
}
