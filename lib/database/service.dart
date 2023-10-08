import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_1/database/todo_modal.dart';

class LocalDBService {
  late Future<Isar> db;

  LocalDBService() {
    db = openDb();
  }

  Future<Isar> openDb() async {
    if (Isar.instanceNames.isEmpty) {
      final directory = await getApplicationCacheDirectory();
      return await Isar.open(
        [TodoSchema],
        inspector: true,
        directory: directory.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  //create a todo
  Future<void> saveTodo({required Todo todo}) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.todos.putSync(todo));
  }
}
