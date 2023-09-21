void main(List<String> args) {
  giveSum(12, null);
}

void giveSum(int? number1, int? number2) {
  final sum = number1 + number2;
  print(sum);
}

extension NullableAdd<T extends num> on T? {
  T? operator +(T? other) {
    if (this != null && other == null) {
      return this as T;
    } else if (this == null && other != null) {
      return other;
    } else if (this == null && other == null) {
      return 0 as T;
    } else {
      return this + other as T;
    }
  }
}
