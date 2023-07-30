
import 'package:json_annotation/json_annotation.dart';

part 'bnr_img_vo.g.dart';
@JsonSerializable()
class BnrImageVO{

  @JsonKey(name:"movie_id")
  num? id;

  @JsonKey(name:"img_url")
  String? imgUrl;

  BnrImageVO(this.id, this.imgUrl);

  factory BnrImageVO.fromJson(Map<String, dynamic> json) =>
      _$BnrImageVOFromJson(json);

  Map<String, dynamic> toJson() => _$BnrImageVOToJson(this);
}