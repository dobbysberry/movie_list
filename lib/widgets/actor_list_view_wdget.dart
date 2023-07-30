
import 'package:flutter/material.dart';
import 'package:movielist/constants/colors.dart';
import 'package:movielist/demos/movie_data_list.dart';
import 'package:movielist/vos/actors_vo/actors_vo.dart';
import 'package:movielist/vos/movie_vo/movie_vo.dart';
import 'package:movielist/widgets/text_widget.dart';

import '../constants/dimens.dart';
import 'image_widget.dart';

class ActorListView extends StatelessWidget {

  final MovieVO mActorList;
  final int movieId;

  //final String whichMovie;


  const ActorListView({
    super.key, required this.mActorList, required this.movieId,

  });



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: actorHeight,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ActorView(
              mActor: (movieId == 0 ) ? HidLoveList : (movieId == 1) ? kingLandList : (movieId == 2) ? see19List : (movieId == 3) ? whenFlyList : (movieId == 4) ? DestinedList : (movieId == 5) ? hipList : (movieId == 6) ? cherryList : (movieId == 7) ? goPrincessList : (movieId == 8 ) ? liesList : (movieId == 9) ? theAnleList : movingList,
              index: index,
            );
          }),
    );
  }
}

class ActorView extends StatelessWidget {
  final List<ActorVO> mActor;
  final int index;

  const ActorView(
      {super.key,
        required this.mActor, required this.index,
        //required this.index,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Card(
        color: Colors.white.withOpacity(0.2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ImageWidget(
                  img: mActor[index].actorImgUrl??'',
                  fitType: BoxFit.cover,
                  //BoxFit.cover,
                  movieImgHeight: 100,
                  //movieImgHeight,
                  movieImgWidth: 100,
                  //movieImgWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: EasyTextWidget(
                txt: mActor[index].actorName ?? '',
                //'TITLE',
                fontSize: 10,
                //fontSize18,
                fontWeight: FontWeight.bold,
                txtColor: defaultClr,
                //FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class ActorListView extends StatelessWidget {
//   //final MovieVO mActor;
//   final String movieName;
//
//    ActorListView({super.key, required this.movieName,});
//
//   //late final int indexNo;
//   late final ActorVO mActor;
//
//   //@override
//   // void setState(VoidCallback fn) {
//   //   // TODO: implement setState
//   //   super.setState(fn);
//   //   if(movieName??'' == dramaName[0]){
//   //     mActor = kingLandList as ActorVO;
//   //   }
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       //scrollDirection: Axis.horizontal,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(900.0),
//           child: Image.asset(
//             mActor.actorImgUrl??"",fit: BoxFit.fill,
//             width: 80,
//             height: 80,
//           ),
//         ),
//         SizedBox(width: 20,),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(900.0),
//           child: Image.asset(
//             '',
//             width: 70,
//             height: 70,
//           ),
//         ),
//         SizedBox(width: 20,),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(900.0),
//           child: Image.asset(
//             'assets/images/edwardMovie.png',fit: BoxFit.fill,
//             width: 80,
//             height: 80,
//           ),
//         ),
//         SizedBox(width: 20,),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(900.0),
//           child: Image.asset('assets/images/edwardMovie.png',fit: BoxFit.fill,
//             width: 80,
//             height: 80,
//           ),
//         ),
//         SizedBox(width: 20,),
//
//
//       ],
//
//     );
//   }
// }

