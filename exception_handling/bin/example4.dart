void main(List<String> args) async {
  final db = Database();
  try {
    await db.getData();
  } catch (e) {
    print(e);
  } finally {
    await db.closeDb();
    print("finally is executed");
  }
}

class Database {
  bool isDbOpen = false;

  Future<void> openDb() {
    return Future.delayed(
        const Duration(seconds: 1), () => print("Db is opened"));
  }

  Future<void> closeDb() {
    return Future.delayed(
        const Duration(seconds: 1), () => print("Db is closed"));
  }

  Future<String> getData() {
    if (!isDbOpen) {
      throw Exception("Db is not open");
    } else {
      return Future.delayed(const Duration(seconds: 1), () => "Data");
    }
  }
}
