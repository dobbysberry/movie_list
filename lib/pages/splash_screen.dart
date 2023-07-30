
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movielist/constants/dimens.dart';
import 'package:movielist/pages/sign_up_page.dart';
import 'package:movielist/widgets/text_widget.dart';

import '../constants/colors.dart';
import '../constants/strings.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const SignUpPage(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          //color: Gradient.linear(from, to, colors)
          color: primaryColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network('https://cdn-icons-png.flaticon.com/512/3658/3658959.png',
              fit: BoxFit.cover,
              width: logoWidth,
              height: logoHeight,
            ),
            EasyTextWidget(txt: title, fontSize: 22, fontWeight: FontWeight.bold, txtColor: btnColor,),
            // Image.network('https://see.fontimg.com/api/renderfont4/ow59x/eyJyIjoiZnMiLCJoIjo0MywidyI6MTAwMCwiZnMiOjQzLCJmZ2MiOiIjRDNDQzcxIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/WmF0dCBLYXI/airtravelerspersonaluse-bdit.png',
            //   fit: BoxFit.contain,
            //   width: 200,
            //   height: 50,
            // ),
          ],
        ),


      ),
    );
  }
}
