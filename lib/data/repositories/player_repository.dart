import 'dart:convert';
import '../dataproviders/players_api.dart';
import '../models/players_model.dart';
import 'dart:async';
class player_repo extends Players_api{

@override 
Future<List<Players>> getplayers()async{
  
 final ermias= Players_api.getplayers;
 final player_api_response=Players_api.player_date;
 if(player_api_response.statusCode==200){
   final parsed=json.decode(player_api_response.body).cast<Map<String, dynamic>>();
   return  parsed.map<Players>((item) => Players.fromJson(item)).toList();
 }
 else{
   throw Exception('Can not  load  the page');
 }
 
}




}

