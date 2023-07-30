// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bnr_img_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BnrImageVO _$BnrImageVOFromJson(Map<String, dynamic> json) => BnrImageVO(
      json['movie_id'] as num?,
      json['img_url'] as String?,
    );

Map<String, dynamic> _$BnrImageVOToJson(BnrImageVO instance) =>
    <String, dynamic>{
      'movie_id': instance.id,
      'img_url': instance.imgUrl,
    };
