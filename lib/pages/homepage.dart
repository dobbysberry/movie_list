
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movielist/constants/colors.dart';
import 'package:movielist/pages/profile.dart';
import 'package:movielist/widgets/text_widget.dart';

import '../constants/dimens.dart';
import '../constants/strings.dart';
import '../demos/movie_data_list.dart';
import '../view_items/home_view_items.dart';
import '../widgets/movie_list_view_widget.dart';
import 'trailer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int index=0;

  List<dynamic> page = [
    const HomePage(),
    TrailerPage(trailerMovie: comingSoonMovieList,),
    const ProfilePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,),
          child: Image.network('https://cdn-icons-png.flaticon.com/512/3658/3658959.png',
            fit: BoxFit.contain,
            width: 20,
            height: 20,
          ),
        ),
        title:  EasyTextWidget(txt: 'Welcome ${FirebaseAuth.instance.currentUser?.displayName??''}', fontSize: fontSize20, fontWeight: FontWeight.bold, txtColor: btnColor,),
        elevation: 0,
        backgroundColor : primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration:  const BoxDecoration(
            color: Color.fromRGBO(57, 57, 57, 1),
          ),
          height: 1300,
          width: double.infinity,
          child:    Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Banner PageView
               Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: BannerView(bnrList: bnrImgList,
                ),
              ),

              const SizedBox(height: 20,),

              ///For Popular List View
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: EasyTextWidget(txt: 'Most Popular Drama List', fontSize: 22, fontWeight: FontWeight.bold, txtColor: defaultClr),
              ),
              MovieListViewWidget(movieList: popularMovieList,),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: EasyTextWidget(txt: 'Now Showing Drama List', fontSize: 22, fontWeight: FontWeight.bold, txtColor: defaultClr),
              ),
              MovieListViewWidget(movieList: nowPlayingMovieList,),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: EasyTextWidget(txt: 'Upcoming Drama List', fontSize: 22, fontWeight: FontWeight.bold, txtColor: defaultClr),
              ),
              MovieListViewWidget(movieList: comingSoonMovieList,),
            ],
          ),
        ),
      ),



      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:Color.fromRGBO(57, 57, 57, 1),
          color: Colors.black,
          index: index,
        onTap: (id) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => page[id]));
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








