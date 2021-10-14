// import 'dart:async';

// import 'package:bloc_e_s/data/dataproviders/lsdb_dao.dart';
// import 'package:bloc_e_s/data/models/login.dart';
// import 'package:bloc_e_s/data/repositories/login_repository.dart';

// class TodoBloc {
//   //Get instance of the Repository
//   final _todoRepository = LoginRepository();

//   //Stream controller is the 'Admin' that manages
//   //the state of our stream of data like adding
//   //new data, change the state of the stream
//   //and broadcast it to observers/subscribers
//   final _todoController = StreamController<List<Login>>.broadcast();

//   get todos => _todoController.stream;

//   TodoBloc() {
//     getTodos();
//   }

//   getTodos({String? query}) async {
//     //sink is a way of adding data reactively to the stream
//     //by registering a new event
//     _todoController.sink.add(await _todoRepository.getAllogin(query: query));
//   }

//   addTodo( todo_log) async {
//     await _todoRepository.insertTodo(todo_log);
//     getTodos();
//   }

//   updateTodo( todo_log) async {
//     await _todoRepository.updateTodo(todo_log);
//     getTodos();
//   }

//   deleteTodoById(int id) async {
//     _todoRepository.deleteTodoById(id);
//     getTodos();
//   }

//   dispose() {
//     _todoController.close();
//   }
// }