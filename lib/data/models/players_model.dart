import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

part 'players_model.g.dart';

@JsonSerializable()
class Players{
    String page;
    String firstname;
    String lastname;
    String urlToImage;
    String  nation;
    String club;
    String speciality;
Players({ required this.page,required this.firstname,required this.lastname,required this.urlToImage,required this.nation,required this.club,required this.speciality});

 factory Players.fromJson(Map<String,dynamic>json)=>_$PlayersFromJson(json);
 Map<String, dynamic>toJson()=>_$PlayersToJson(this);

} 