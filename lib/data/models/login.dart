import 'package:freezed_annotation/freezed_annotation.dart';

class Login{
  final int? id;
  final String email;
  final String password;
  Login({this.id, required  this.email, required this.password});

  factory Login.fromDatabaseJson(Map<String,dynamic> data) => Login(
    id: data['id'],
    email: data['email'],
    password: data['password'],
  );
  Map<String, dynamic> toDatabaseJson(){
    return{
      'id':id,
      'email':email,
      'password':password
    };
  }

}