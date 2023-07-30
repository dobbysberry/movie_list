

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movielist/constants/colors.dart';
import 'package:movielist/constants/dimens.dart';
import 'package:movielist/demos/movie_data_list.dart';
import 'package:movielist/pages/sign_up_page.dart';
import 'package:movielist/pages/trailer.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:movielist/widgets/text_widget.dart';

import '../utils/firebase_service.dart';
import 'homepage.dart';

class FbProfilePage extends StatefulWidget {


  const FbProfilePage({super.key});

  @override
  State<FbProfilePage> createState() => _FbProfilePage();
}

class _FbProfilePage extends State<FbProfilePage> {

  final int index=2;
  bool _isLoggedIn = false;
  Map _userObj = {};

  List<dynamic> page = [
    const HomePage(),
    TrailerPage(trailerMovie: comingSoonMovieList,),
    const FbProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //centerTitle: true,
        title: const EasyTextWidget(txt: 'Profile', fontSize: fontSize20, fontWeight: FontWeight.bold, txtColor: defaultClr),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 700,
              decoration: const BoxDecoration(
                color: Colors.white12,
              ),
              child: Stack(
                children: [

                  Padding(
                    padding: EdgeInsets.only(left: 110,top: 50),
                    child:  Column(
                      children: [
                        CircleAvatar(
                          radius: 68, // Image radius
                          backgroundImage: NetworkImage('${FirebaseAuth.instance.currentUser?.photoURL??''}'),
                        ),
                        SizedBox(height: 10,),

                        EasyTextWidget(txt: FirebaseAuth.instance.currentUser?.displayName??'', fontSize: fontSize18, fontWeight: FontWeight.bold, txtColor: defaultClr),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 230),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        height: 320,
                        child: ListView(
                          children:  [
                            SizedBox(height: 30,),
                            ListTile(
                              leading: Icon(Icons.person),
                              title: Row(
                                children: [
                                  EasyTextWidget(txt: _userObj['name'], fontSize: fontSize18, fontWeight: FontWeight.normal, txtColor: defaultClr),

                                ],
                              ) ,

                            ),


                            SizedBox(height: 20,),
                            ListTile(
                              leading: Icon(Icons.mail_rounded),
                              title: Row(
                                children: [
                                  EasyTextWidget(txt: _userObj['email'], fontSize: fontSize18, fontWeight: FontWeight.normal, txtColor: defaultClr),
                                ],
                              ) ,

                            ),

                            SizedBox(height: 20,),


                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                  side: BorderSide(color: Colors.transparent, width: 2),
                                ),
                                onPressed: ()  {
                                  FacebookAuth.instance.logOut().then((value) {
                                    setState(() {
                                      _isLoggedIn = false;
                                      _userObj = {};
                                    });
                                  });

                                },
                                child: const Row(
                                  children: [
                                    SizedBox(width: 70,),
                                    EasyTextWidget(
                                        txt: 'Log Out',
                                        fontSize: fontSize18,
                                        fontWeight: FontWeight.bold,
                                        txtColor: titleClr),
                                    SizedBox(width: 30,),
                                  ],
                                ),
                              ),
                            ),
                            // ListTile(
                            //   leading: Icon(Icons.person),
                            //   title: Row(
                            //     children: [
                            //       EasyTextWidget(txt: 'logout', fontSize: fontSize18, fontWeight: FontWeight.normal, txtColor: defaultClr),
                            //     ],
                            //   ) ,
                            //
                            // ),


                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white12,
        color: Colors.black,
        index: index,
        onTap: (id) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => page[id]));
        },
        letIndexChange: (id) => true,

        items: const [
          Icon(Icons.home,color: btnColor,),

          Icon(Icons.play_circle,color: btnColor,),

          Icon(Icons.person,color: btnColor,),

        ],

      ),
    );
  }
}
