// ignore_for_file:unused_local_variable

void main(List<String> arguments) {
  print(doTypesMatch(12, 12.3));
}

// bool doTypesMatch(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

bool doTypesMatch<T, K>(T a, K b) {
  return T == K;
}
