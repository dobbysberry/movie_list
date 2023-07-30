
//import 'package:json_annotation/json_annotation.dart';

//part 'movie_vo.g.dart';
  //@JsonSerializable()

class MovieVO{

    String? coverImgUl;

    //@JsonKey(name: 'img_url')
    String? imgUrl;

    //@JsonKey(name: 'movie_title')
    String? movieTitle;

    //@JsonKey(name: 'release_year')
    String? releaseYear;

    String? description;

    String? language;

    String? languageValue;

    String? genre;

    String? genreValue;

    String? author;

    String? authorName;

    String? director;

    String? directorName;

    String? orgCtry;

    String? orgCtryValue;

    String? onAir;

    String? onAirChannel;

    int? id;

    String? dramaTrailerUrl;


    MovieVO(
      this.coverImgUl,
      this.imgUrl,
      this.movieTitle,
      this.releaseYear,
      this.description,
      this.language,
      this.languageValue,
      this.genre,
      this.genreValue,
      this.author,
      this.authorName,
      this.director,
      this.directorName,
      this.orgCtry,
      this.orgCtryValue,
      this.onAir,
      this.onAirChannel,
      this.id,
      this.dramaTrailerUrl,
        );

  // factory MovieVO.fromJson(Map<String, dynamic> json) =>
  //     _$MovieVOFromJson(json);
  //
  // Map<String, dynamic> toJson() => _$MovieVOToJson(this);


}