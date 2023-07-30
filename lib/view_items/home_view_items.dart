
import 'package:flutter/material.dart';
import 'package:movielist/demos/movie_data_list.dart';
import 'package:movielist/vos/bnr_img_vo/bnr_img_vo.dart';

import '../constants/dimens.dart';

class BannerView extends StatefulWidget {
  final List<BnrImageVO> bnrList;

  const BannerView({
    super.key,
    required this.bnrList,

  });

  @override
  State<BannerView> createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: bnrHeight,
      child: PageView.builder(
          itemCount: bnrImgList.length,
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                bnrImgList[index].imgUrl??'',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            );
          }),

    );
  }
}

