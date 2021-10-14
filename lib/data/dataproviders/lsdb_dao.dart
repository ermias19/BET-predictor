// import 'dart:async';

// import 'package:bloc_e_s/data/models/login.dart';
// import 'package:bloc_e_s/database/lsdb.dart';

// class TodoDao {
//   final dbProvider = DatabaseProvider.dbProvider;

//   //Adds new Todo records
//   Future<int> createTodo(Login todo) async {
//     final db = await dbProvider.database;
//     var result = db.insert(login_user, todo.toDatabaseJson());
//     return result;
//   }

//   //Get All Todo items
//   //Searches if query string was passed
//   Future<List<Login>> getTodos({List<String>? columns, String? query}) async {
//     final db = await dbProvider.database;

//     List<Map<String, dynamic>> result;
//     if (query != null) {
//       if (query.isNotEmpty)
//         result = await db.query(login_user,
//             columns: columns,
//             where: 'description LIKE ?',
//             whereArgs: ["%$query%"]);
//     } else {
//       result = await db.query(login_user, columns: columns);
//     }
     

//     List<Login> todos = result.isNotEmpty
//         ? result.map((item) => Login.fromDatabaseJson(item)).toList()
//         : [];
//     return todos;
    
    
//   }

//   //Update Todo record
//   Future<int> updateTodo(Login todo) async {
//     final db = await dbProvider.database;

//     var result = await db.update(login_user, todo.toDatabaseJson(),
//         where: "id = ?", whereArgs: [todo.id]);

//     return result;
//   }

//   //Delete Todo records
//   Future<int> deleteTodo(int id) async {
//     final db = await dbProvider.database;
//     var result = await db.delete(login_user, where: 'id = ?', whereArgs: [id]);

//     return result;
//   }

//   //We are not going to use this in the demo
//   Future deleteAllTodos() async {
//     final db = await dbProvider.database;
//     var result = await db.delete(
//       login_user,
//     );

//     return result;
//   }
//   }
//   }
