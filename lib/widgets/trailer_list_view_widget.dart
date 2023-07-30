import 'package:flutter/material.dart';
import 'package:movielist/constants/colors.dart';
import 'package:movielist/pages/details_page.dart';
import 'package:movielist/vos/movie_vo/movie_vo.dart';
import 'package:movielist/widgets/text_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../constants/dimens.dart';
import 'image_widget.dart';

class TrailerListViewWidget extends StatefulWidget {
  final List<MovieVO> movieList;
  //final String whichMovie;

  const TrailerListViewWidget({
    required this.movieList,
    super.key,
  });

  @override
  State<TrailerListViewWidget> createState() => _TrailerListViewWidgetState();
}

class _TrailerListViewWidgetState extends State<TrailerListViewWidget> {

  final videoUrl = 'https://youtu.be/te3tOFVqeKo';
  late YoutubePlayerController _controller;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   final  videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BBAyRBTfsOU");
  //   print(videoId);
  //   _controller = YoutubePlayerController(initialVideoId: videoId!,
  //   flags: YoutubePlayerFlags(
  //
  //   ),
  //   );
  //   super.initState();
  //
  // }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 589,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: widget.movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieView(
              mMovie: widget.movieList[index],
            );
          }),
    );
  }
}

class MovieView extends StatelessWidget {
  final MovieVO mMovie;
  //final int index;

  const MovieView({
    super.key,
    required this.mMovie,
    //required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: primaryColor,
      child: Center(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(
                                  mMovie: mMovie,
                                )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child:
                      // YoutubePlayer(
                      //
                      // ),
                      ImageWidget(
                        img: mMovie.coverImgUl ?? '',
                        fitType: BoxFit.cover,
                        //BoxFit.cover,
                        movieImgHeight: 200,
                        //movieImgHeight,
                        movieImgWidth: 340,
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
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                  child: GestureDetector(
                    child: Icon(
                Icons.play_circle,
                color: btnColor,
                size: 40,
              ),
                  )),
            ),
            Positioned(
              left: 250,
              top: 230,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(
                                mMovie: mMovie,
                              )));
                },
                child: EasyTextWidget(
                    txt: 'See Details',
                    fontSize: fontSize18,
                    fontWeight: FontWeight.bold,
                    txtColor: defaultClr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YoutubePlayer extends StatelessWidget {
  const YoutubePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(

    );
  }
}

