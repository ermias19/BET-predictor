import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'players_model.g.dart';
class Image_url{
  final String imgUrl;
  Image_url({required this.imgUrl});
  factory Image_url.fromJson(Map<String,dynamic> parsedJson){
    return Image_url(
      imgUrl:parsedJson['imgUrl']
    );
  }
}
class Inner_Players {
  final String firstName;
  final String lastName;
  final int age; 
  final String position;
  Image_url headshot;

  Inner_Players({required this.firstName, required this.lastName, required this.age, required this.position, required this.headshot});

  factory Inner_Players.fromJson(Map<String, dynamic> parsedJson) {
     

    return Inner_Players(
        firstName: parsedJson['firstName'], 
        lastName: parsedJson['commonName'],
        age:parsedJson['age'], 
        position: parsedJson['position'],
        headshot:Image_url.fromJson(parsedJson['headshot'])
        );

  }
}

class Players {
  int page;
  int totalPages;
  int totalResults;

  int count;
  List<Inner_Players> items;

  Players(
      {required this.page,
      required this.totalPages,
      required,
      required this.totalResults,
      required this.count,
      required this.items});

//  factory Players.fromJson(Map<String,dynamic>json)=>_$PlayersFromJson(json);
//  Map<String, dynamic>toJson()=>_$PlayersToJson(this);
  factory Players.fromJson(Map<String, dynamic> json) {
    var list = json['items'] as List;
    print(list.runtimeType);
    List<Inner_Players> imagesList =
        list.map((i) => Inner_Players.fromJson(i)).toList();

    return Players(
        page: json['page'],
        totalPages: json['totalPages'],
        totalResults: json['totalResults'],
        count: json['count'],
        items: imagesList);
  }
}
