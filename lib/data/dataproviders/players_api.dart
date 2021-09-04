import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/players_model.dart';
import 'dart:async';


 class Players_api {
  static var player_date;
  Future<Players>  getplayers() 
 async{
   player_date=await http.get(Uri.parse('https://www.easports.com/fifa/ultimate-team/api/fut/item?'));
   print(player_date.body.toString());
    
    if (player_date.statusCode == 200) {
      print(Players.fromJson(json.decode(player_date.body)));
      return Players.fromJson(json.decode(player_date.body));
      
      }
      else{
        throw Exception('failed to load the player status');
      }

    

   

  }
}