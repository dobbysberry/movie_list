import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:movielist/constants/colors.dart';
import 'package:movielist/constants/dimens.dart';
import 'package:movielist/pages/homepage.dart';
import 'package:movielist/widgets/text_widget.dart';

import '../utils/firebase_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isSignIn = false;
  bool google = false;
  bool _isloggedIn = false;
  Map _userData = {};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: SizedBox(
                height: 600,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3658/3658959.png',
                      fit: BoxFit.cover,
                      width: 120,
                      height: 140,
                    ),
                    // ImageWidget(
                    //     img: 'https://cdn-icons-png.flaticon.com/512/3658/3658959.png', fitType: BoxFit.cover, movieImgHeight: 100, movieImgWidth: 100),

                    const SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      height: 240,
                      child: ListView(
                        children: [
                          const Center(
                              child: EasyTextWidget(
                                  txt: 'Sign Up',
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  txtColor: defaultClr)),
                          const SizedBox(
                            height: 30,
                          ),


                          ///GG & FB btn
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow,
                                side: BorderSide(color: Colors.transparent, width: 2),
                              ),
                              onPressed: () async {
                                await FirebaseService().signInWithGoogle();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomePage()));
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.mail_rounded,color: titleClr,),
                                  SizedBox(width: 10,),
                                  EasyTextWidget(
                                      txt: 'Sign In with Google',
                                      fontSize: fontSize18,
                                      fontWeight: FontWeight.bold,
                                      txtColor: titleClr),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: BorderSide(color: Colors.yellow, width: 2),
                              ),
                              onPressed: () async {
                                 await FacebookAuth.instance.login(
                                   permissions: ["public_profile","email"]
                                 ).then((value) {
                                   FacebookAuth.instance.getUserData().then((userData) async {
                                     setState(() {
                                       _isloggedIn = true;
                                       _userData = userData;
                                       print(userData);
                                     });
                                   });
                                 });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomePage()));
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.facebook_rounded,color: defaultClr,),
                                  SizedBox(width: 10,),
                                  EasyTextWidget(
                                      txt: 'Sign In with Facebook',
                                      fontSize: fontSize18,
                                      fontWeight: FontWeight.bold,
                                      txtColor: defaultClr),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
