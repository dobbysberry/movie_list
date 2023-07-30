
//import 'package:json_serializable/json_serializable.dart';
//import 'package:json_annotation/json_annotation.dart';

//part 'trailer_vo.g.dart';
//@JsonSerializable()
class TrailerVO{

  //@JsonKey(name: "")
  String? imgUrl;

  //@JsonKey(name: "")
  String? videoUrl;

 //@JsonKey(name:"")
  String? movieName;

  //@JsonKey(name: "")
  String? releaseDate;

  TrailerVO(this.imgUrl, this.videoUrl, this.movieName, this.releaseDate);

  // factory TrailerVO.fromJson(Map<String, dynamic> json) =>
  //     _$TrailerVOFromJson(json);
  //
  // Map<String, dynamic> toJson() => _$TrailerVOToJson(this);


}