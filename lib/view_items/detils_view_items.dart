
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimens.dart';
import '../vos/movie_vo/movie_vo.dart';
import '../widgets/text_widget.dart';

class CategoryView extends StatelessWidget {

  const CategoryView({
    super.key,
    required this.mMovie,
  });

  final MovieVO mMovie;


  @override
  Widget build(BuildContext context) {
    return Row(
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
        EasyTextWidget(
            txt: mMovie.onAirChannel??'',
            fontSize: fontSize16,
            fontWeight: FontWeight.normal,
            txtColor: defaultClr)
      ],
    );
  }
}