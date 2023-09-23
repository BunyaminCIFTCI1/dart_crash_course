// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // if type of map becomes different than String,int then we get an error
  final JSON<int> json = {"age": 23};
}

typedef JSON<T> = Map<String, T>;
