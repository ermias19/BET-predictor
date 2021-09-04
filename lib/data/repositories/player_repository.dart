import 'dart:convert';
import '../dataproviders/players_api.dart';
import '../models/players_model.dart';
import 'dart:async';
class Player_repo extends Players_api{
  Players_api _provider=Players_api();

@override 
Future<Players> getplayers(){
  print( _provider.getplayers());
  
  return _provider.getplayers();
  }
  
//  final ermias= Players_api.getplayers;
//  final player_api_response=Players_api.player_date;
//  if(player_api_response.statusCode==200){
//    final parsed=json.decode(player_api_response.body).cast<Map<String, dynamic>>();
//    return  parsed.map<Players>((players) => Players.fromJson(players)).toList();
//  }
//  else{
//    throw Exception('Can not  load  the page');
//  }
 
}

class NetworkError extends Error {}
// class NetworkError extends Error {}

