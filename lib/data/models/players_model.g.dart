// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Players _$PlayersFromJson(Map<String, dynamic> json) {
  return Players(
    page: json['page'] as int,
    totalPages: json['totalPages'] as int,
    type: json['type'] as String,
    totalResults: json['totalResults'] as int,
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$PlayersToJson(Players instance) => <String, dynamic>{
      'page': instance.page,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'type': instance.type,
      'count': instance.count,
    };
