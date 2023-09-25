void main(List<String> args) {}
// to handle errors for stream we use handleError function
Stream<String> getNames() async* {
  yield "Baran";
  yield "Emir";
  throw "All out of names";
}

extension AbsorbError<T> on Stream<T> {
  Stream<T> absorbErrorsUsingHandleError() => handleError((_, __) => null);
}
