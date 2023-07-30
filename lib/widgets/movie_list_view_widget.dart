import 'package:flutter/material.dart';
import 'package:movielist/constants/colors.dart';
import 'package:movielist/pages/details_page.dart';
import 'package:movielist/vos/movie_vo/movie_vo.dart';
import 'package:movielist/widgets/text_widget.dart';

import '../constants/dimens.dart';
import 'image_widget.dart';

class MovieListViewWidget extends StatelessWidget {

  final List<MovieVO> movieList;
  //final String whichMovie;


  const MovieListViewWidget({
    required this.movieList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: listHeight,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieView(
              mMovie: movieList[index], );
          }),
    );
  }
}

class MovieView extends StatelessWidget {
  final MovieVO mMovie;
  //final int index;

  const MovieView(
      {super.key,
      required this.mMovie, 
        //required this.index,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Card(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(mMovie: mMovie,)));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: ImageWidget(
                      img: mMovie.imgUrl ?? '',
                      fitType: BoxFit.cover,
                      //BoxFit.cover,
                      movieImgHeight: movieImgHeight,
                      //movieImgHeight,
                      movieImgWidth: movieImgWidth,
                      //movieImgWidth,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: EasyTextWidget(
                  txt: mMovie.movieTitle ?? '',
                  //'TITLE',
                  fontSize: fontSize18,
                  //fontSize18,
                  fontWeight: FontWeight.bold,
                  txtColor: defaultClr,
                  //FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: EasyTextWidget(
                  txt: mMovie.releaseYear ?? '',
                  //'YEAR',
                  fontSize: fontSize16,
                  //fontSize16,
                  fontWeight: FontWeight.normal,
                  txtColor: defaultClr,
                  //FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
