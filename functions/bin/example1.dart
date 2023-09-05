void main(List<String> args) {
  // if we do not specify a return value for a function then by default dynamic or null is returned
//named parameters either have to have a value or become null otherwise we just specify them as required
// required named parameters can not have a default value
// positional arguments can not have default values  so if we want to give default values to positional parameters then we make them optional positional parameters
}
// code below does not make sense instead use other one
int doSomething(int Function(int a, int b) operation) {
  return operation(10, 20);
}

int doSomething2(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}
