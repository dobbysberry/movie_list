import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movielist/constants/colors.dart';
import 'package:movielist/demos/movie_data_list.dart';
import 'package:movielist/pages/profile.dart';
import 'package:movielist/widgets/image_widget.dart';
import 'package:movielist/widgets/movie_list_view_widget.dart';
import 'package:movielist/widgets/text_widget.dart';

import '../constants/dimens.dart';
import '../vos/movie_vo/movie_vo.dart';
import '../widgets/trailer_list_view_widget.dart';
import 'homepage.dart';

class TrailerPage extends StatefulWidget {
  final List<MovieVO> trailerMovie;
  const TrailerPage({super.key, required this.trailerMovie});

  @override
  State<TrailerPage> createState() => _TrailerPageState();
}

class _TrailerPageState extends State<TrailerPage> {
  final int index = 1;

  final List<dynamic> _page = [
    const HomePage(),
    TrailerPage(
      trailerMovie: comingSoonMovieList,
    ),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(57, 57, 57, 1),
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: primaryColor,
        shadowColor: const Color.fromRGBO(194, 149, 169, 1),
        centerTitle: true,
        title: const EasyTextWidget(
          txt: 'Movie Trailers',
          fontSize: fontSize20,
          fontWeight: FontWeight.bold,
          txtColor: btnColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, right: 10),
            //   child: SizedBox(
            //     height: 250,
            //     child: Stack(
            //       children: [
            //         ClipRRect(
            //             borderRadius: BorderRadius.circular(20),
            //             child: ImageWidget(
            //                 img:
            //                     comingSoonMovieList[index].coverImgUl??'',
            //                 fitType: BoxFit.fill,
            //                 movieImgHeight: movieImgHeight,
            //                 movieImgWidth: 400)),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 140, left: 20),
            //           child: EasyTextWidget(
            //               txt: comingSoonMovieList[index].movieTitle ?? '',
            //               fontSize: fontSize20,
            //               fontWeight: FontWeight.normal,
            //               txtColor: defaultClr),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 170, left: 20),
            //           child: EasyTextWidget(
            //               txt: comingSoonMovieList[index].releaseYear ?? '',
            //               fontSize: fontSize18,
            //               fontWeight: FontWeight.normal,
            //               txtColor: defaultClr),
            //         ),
            //         GestureDetector(
            //           // onTap: () {
            //           //   Navigator.push(
            //           //       context, MaterialPageRoute(builder: (context) => ));
            //           // },
            //           child: const Center(
            //             child: Icon(
            //               Icons.play_circle,
            //               color: btnColor,
            //               size: 50,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            TrailerListViewWidget(movieList: comingSoonMovieList),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:Color.fromRGBO(57, 57, 57, 1),
        color: Colors.black,
        index: index,
        onTap: (id) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => _page[id]));
        },
        letIndexChange: (id) => true,

        items: const [
          Icon(Icons.home,color: Colors.yellow,),

          Icon(Icons.play_circle,color: Colors.yellow,),

          Icon(Icons.person,color: Colors.yellow,),

        ],

      ),
    );
  }
}
