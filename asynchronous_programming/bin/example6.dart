void main(List<String> args) {}

Stream<String> getMaleNames() async* {
  yield "Baran";
  yield "Emir";
  yield "Kagan";
}

Stream<String> getFemaleNames() async* {
  yield "Banu";
  yield "Beren";
  yield "Esra";
}

Stream<String> getAllNames() async* {
  yield* getMaleNames();
  yield* getFemaleNames();
}
