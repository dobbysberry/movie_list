import 'package:flutter/material.dart';
import 'package:movielist/constants/colors.dart';
import 'package:movielist/vos/movie_vo/movie_vo.dart';
import 'package:movielist/widgets/image_widget.dart';
import 'package:movielist/widgets/text_widget.dart';

import '../constants/dimens.dart';
import '../widgets/actor_list_view_wdget.dart';

class DetailPage extends StatelessWidget {
  //final int mIndex;
  final MovieVO mMovie;
   DetailPage({super.key,
    //required this.mIndex,
    required this.mMovie
  });

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(57, 57, 57, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(57, 57, 57, 1),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: EasyTextWidget(txt: 'Details ', fontSize: fontSize18, fontWeight: FontWeight.bold, txtColor: Colors.yellow),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child:  ImageWidget(
                            img:
                               mMovie.coverImgUl??'',
                            fitType: BoxFit.cover,
                            movieImgHeight: 250,
                            movieImgWidth: 500))),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    height: 1300,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding:  const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           const SizedBox(
                            height: 20,
                          ),
                            Center(
                              child: EasyTextWidget(
                                  txt: mMovie.movieTitle??'',
                                  fontSize: fontSize18,
                                  fontWeight: FontWeight.bold,
                                  txtColor: defaultClr)),
                          const SizedBox(
                            height: 10,
                          ),
                            Center(
                              child: EasyTextWidget(
                                  txt: mMovie.releaseYear??'',
                                  fontSize: fontSize16,
                                  fontWeight: FontWeight.w700,
                                  txtColor: defaultClr)),
                          const SizedBox(
                            height: 10,
                          ),
                           const EasyTextWidget(
                              txt: 'StoryLines',
                              fontSize: fontSize18,
                              fontWeight: FontWeight.w700,
                              txtColor: defaultClr),
                            EasyTextWidget(
                            txt:mMovie.description??'',
                            fontSize: fontSize16,
                            fontWeight: FontWeight.w600,
                            txtColor: defaultClr,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 3,
                                  child:   EasyTextWidget(
                                      txt: mMovie.language??'',
                                      fontSize: fontSize16,
                                      fontWeight: FontWeight.bold,
                                      txtColor: defaultClr)),
                                Expanded(
                                  child: EasyTextWidget(
                                    txt: mMovie.languageValue??'',
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.normal,
                                    txtColor: defaultClr),
                                )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 3,
                                  child:  EasyTextWidget(
                                      txt: mMovie.genre??'',
                                      fontSize: fontSize16,
                                      fontWeight: FontWeight.bold,
                                      txtColor: defaultClr)),
                               Expanded(
                                 child: EasyTextWidget(
                                    txt: mMovie.genreValue??'',
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.normal,
                                    txtColor: defaultClr),
                               )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 3,
                                  child:  EasyTextWidget(
                                      txt: mMovie.author??'',
                                      fontSize: fontSize16,
                                      fontWeight: FontWeight.bold,
                                      txtColor: defaultClr)),
                               Expanded(
                                 child: EasyTextWidget(
                                    txt: mMovie.authorName??'',
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.normal,
                                    txtColor: defaultClr),
                               )
                            ],
                          ),

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 3,
                                  child:  EasyTextWidget(
                                      txt: mMovie.director??'',
                                      fontSize: fontSize16,
                                      fontWeight: FontWeight.bold,
                                      txtColor: defaultClr)),
                              Expanded(
                                child: EasyTextWidget(
                                    txt: mMovie.directorName??'',
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.normal,
                                    txtColor: defaultClr),
                              )
                            ],
                          ),

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 3,
                                  child:  EasyTextWidget(
                                      txt: mMovie.orgCtry??'',
                                      fontSize: fontSize16,
                                      fontWeight: FontWeight.bold,
                                      txtColor: defaultClr)),
                              Expanded(
                                child: EasyTextWidget(
                                    txt: mMovie.orgCtryValue??'',
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.normal,
                                    txtColor: defaultClr),
                              )
                            ],
                          ),

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 3,
                                  child:  EasyTextWidget(
                                      txt: mMovie.onAir??'',
                                      fontSize: fontSize16,
                                      fontWeight: FontWeight.bold,
                                      txtColor: defaultClr)),
                              Expanded(
                                child: EasyTextWidget(
                                    txt: mMovie.onAirChannel??'',
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.normal,
                                    txtColor: defaultClr),
                              )
                            ],
                          ),

                          ActorListView(mActorList: mMovie, movieId: mMovie.id??0,),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Download',
        backgroundColor: Colors.yellow,
        //const Color.fromRGBO(63, 169, 190, 1),
        splashColor: const Color.fromRGBO(98, 194, 213, 1.0),
        //heroTag: 'uniqueTag',
        label: const Row(
          children: [Icon(Icons.download,color: titleClr,),
            EasyTextWidget(txt: 'Download', fontSize: fontSize16, fontWeight: FontWeight.bold, txtColor: titleClr)],
        ),
        onPressed: () {},
      ),
    );
  }
}
