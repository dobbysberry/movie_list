
import 'package:flutter/material.dart';


class ImageWidget extends StatelessWidget {
  final String img;
  final BoxFit fitType;
  final double movieImgHeight;
  final double movieImgWidth;
  const ImageWidget({
    super.key,
    required this.img,
    required this.fitType,
    required this.movieImgHeight,
    required this.movieImgWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        //'https://png.pngtree.com/element_origin_min_pic/16/11/25/338b05c261d71d7d21fad2d393bebeca.jpg',
        img,
        fit: fitType,
        //BoxFit.cover,

        width: movieImgWidth,
        //movieImgHeight,
        height: movieImgHeight,
        //movieImgWidth,
      ),
    );
  }
}