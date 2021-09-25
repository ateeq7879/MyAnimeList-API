// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Node _$NodeFromJson(Map<String, dynamic> json) {
  return Node(
    json['id'] as int,
    json['title'] as String,
    json['main_picture'] == null
        ? null
        : MainPicture.fromJson(json['main_picture'] as Map<String, dynamic>),
    (json['mean'] as num)?.toDouble(),
    json['status'] as String,
    json['num_episodes'] as int,
    json['background'] as String,
  );
