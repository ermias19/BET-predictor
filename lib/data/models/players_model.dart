import 'package:flutter/material.dart';

class Players{
   String commoname;
   String firstname;
   String lastname;
   String urlToImage;
   String  nation;
   String club;
   String speciality;
Players({ required this.commoname,required this.firstname,required this.lastname,required this.urlToImage,required this.nation,required this.club,required this.speciality});

 factory Players.fromJson(Map<String,dynamic>json){
   
    commoname=json['commoname'];
    firstname=json['firstname'];
    lastname=json['lastname'];
    urlToImage=json['urlToImage'];
    nation=json['nation'];
    club=json['club'];
    speciality=json['speciality'];

    return List<Player>>

}
Map<String,dynamic> toJson(){
  final Map<String,dynamic> data= new Map<String,dynamic>();
  data['commoname']=this.commoname;
  data['firstname']=this.firstname;
  data['lastname']=this.lastname;
  data['urlToImage']=this.urlToImage;
  data['nation']=this.nation;
  data['club']=this.club;
  data['speciality']=this.speciality;
  return data;

}

}
