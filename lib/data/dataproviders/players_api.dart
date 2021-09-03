import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/players_model.dart';
import 'dart:async';


abstract class Players_api {
  static var player_date;
 static Future<List<Players>>  getplayers() 
 async{
   player_date=await http.get(Uri.parse('https://www.easports.com/fifa/ultimate-team/api/fut/item?'));
    var json_data= json.decode(player_date.body);
    

    return json_data;

  }
}