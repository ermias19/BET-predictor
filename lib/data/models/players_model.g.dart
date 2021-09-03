// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Players _$PlayersFromJson(Map<String, dynamic> json) {
  return Players(
    page: json['page'] as String,
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
    urlToImage: json['urlToImage'] as String,
    nation: json['nation'] as String,
    club: json['club'] as String,
    speciality: json['speciality'] as String,
  );
}

Map<String, dynamic> _$PlayersToJson(Players instance) => <String, dynamic>{
      'page': instance.page,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'urlToImage': instance.urlToImage,
      'nation': instance.nation,
      'club': instance.club,
      'speciality': instance.speciality,
    };
