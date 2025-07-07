// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Activity _$ActivityFromJson(Map<String, dynamic> json) => _Activity(
  activity: json['activity'] as String,
  type: json['type'] as String,
  participants: (json['participants'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  key: json['key'] as String,
  accessibility: (json['accessibility'] as num).toDouble(),
);

Map<String, dynamic> _$ActivityToJson(_Activity instance) => <String, dynamic>{
  'activity': instance.activity,
  'type': instance.type,
  'participants': instance.participants,
  'price': instance.price,
  'key': instance.key,
  'accessibility': instance.accessibility,
};
