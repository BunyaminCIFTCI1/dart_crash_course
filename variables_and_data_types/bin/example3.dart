// ignore_for_file: unused_local_variable

// if we want to make specifying types obligated then we have to type always_specify_types expression in analysis_options.yaml file
void main(List<String> args) {
  //late variables are initialized when they are used
  late final value = getValue();
  print("We are here");
  print(value);
  // in the case below function is not going to be called again just like normal variables
  print(value);
}

int getValue() {
  print("getValue is called");
  return 10;
}
