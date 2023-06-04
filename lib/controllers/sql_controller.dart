// import 'package:get/get.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class SQLController extends GetxController {
//   void createDatabase() async {
//     // Get a location using getDatabasesPath
//     var databasesPath = await getDatabasesPath();
//     String path = join(databasesPath, 'recipes.db');

//     openAppDatabase(path: path);
//   }

//   void openAppDatabase({required String path}) async {
//     // open the database
//     await openDatabase(path, version: 1,
//         onCreate: (Database db, int version) async {
//       // When creating the db, create the table
//       await db.execute(
//           'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
//     });
//   }
// }
