void main(List<String> arguments) {}

extension Sum<T extends num> on Iterable<T> {
  T get sum {
    return reduce((value, element) => value + element as T);
  }
}
