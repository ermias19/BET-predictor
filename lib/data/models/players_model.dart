import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';


part 'players_model.g.dart';

@JsonSerializable()
class Players{
    int page;
    int totalPages;
    int   totalResults;
    String type;
    int   count;
    
   
Players({ required this.page,required this.totalPages,required this.type,required this.totalResults, required this.count});

 factory Players.fromJson(Map<String,dynamic>json)=>_$PlayersFromJson(json);
 Map<String, dynamic>toJson()=>_$PlayersToJson(this);

} 
