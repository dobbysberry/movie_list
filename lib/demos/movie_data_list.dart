import 'package:movielist/vos/bnr_img_vo/bnr_img_vo.dart';
import 'package:movielist/vos/trailer_vo/trailer_vo.dart';

import '../constants/strings.dart';
import '../vos/actors_vo/actors_vo.dart';
import '../vos/movie_vo/movie_vo.dart';

List<MovieVO> popularMovieList = [
  //MovieVO(imgUrl, movieTitle, releaseYear)

  //MovieVO(imgUrl, movieTitle, releaseYear, description, producer, producerName)
  MovieVO(
    'https://bogordaily.net/wp-content/uploads/2023/07/zigi-64916f2105834-hidden-love_665_374.jpeg',
    'https://annyeongoppa.com/wp-content/uploads/2023/07/Fzwe7OSaYAEcAeX.jpg',
    'Hidden Love',
    '2023/6',
    'Sang Zhi had a  crush on Duan Jia Xu when she was young, but they lost contact with each other for some reason. After she graduates, she joins the university in the city he is in, and during their day-to-day intimate and close interaction, they slowly fall in love.',
    languageTitle,
    '힙하게',
    genre,
    'Comedy drama, Thriller',
    author,
    'Lee Nam-gyu, Oh Bo-hyeon, Kim Da-hee',
    director,
    'Kim Seok-yoon, Choi Bo-yoon',
    orgCtry,
    'South Korea',
    releaseChanl,
    'JTBC, Netflix',
    //HidLoveList,
    0,
    '',
  ),
  MovieVO(
      'https://cnovelholic.com/wp-content/uploads/2023/07/When-I-Fly-Towards-You-Drama-Review-poster-2.jpg',
      'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/06/25/20230624_104049-1028940118.jpg',
      'When I Fly Toward You',
      '2023/6',
      'In the early autumn of 2012, Jiangyi High School welcomes a cheerful transfer student named Su Zai Zai (Zhang Miao Yi). On the first day of school, Su Zai Zai encounters the aloof and cool Zhang Lu Rang (Zhou Yi Ran) and falls in love with him at first sight. Behind Zhang Lu Rang\'s seemingly outstanding academic performance and privileged family background, he is a "contradictory" person who appears to be quite confident on the outside yet constantly doubts himself on the inside. Due to the presence of his genius younger brother, Zhang Lu Li, Zhang Lu Rang is constantly compared to him by his mother. For over a decade, Zhang Lu Rang\'s life has been like living inside a thick shell. He is introverted and speaks little. He looks composed and polite but keeps everyone at a distance. However, Zhang Lu Rang\'s life changes when he meets the bubbly and forward Su Zai Zai, and joins hands with old and new friends Gu Ran, Guan Fang, and Su Zai Zai\'s best friend, Jiang Jia. They help him understand the meaning of one\'s self and he slowly begins to understand how to plan his life. Zhang Lu Rang and Su Zai Zai work towards their goals while supporting one another, as romance begins to blossom throughout their friend group.',
    languageTitle,
    '当我飞奔向你 (dāng wǒ fēi bēn xiàng nǐ)',
    genre,
    'Romantic comedy, oming-of-age',
    author,
    'She\'s a Little Crazy (她病的不轻) by Zhu Yi (竹已)',
    director,
    'Mao De Shu',
    orgCtry,
    'China',
    releaseChanl,
    'Youku',
    //whenFlyList,
    3,
    '',
  ),
  MovieVO(
      'https://www.tamilanjobs.com/wp-content/uploads/2023/05/see-you-in-my-19th-life-1_169.jpeg',
      'https://i.mydramalist.com/2wm4Ad_2f.jpg',
      'See you in my 19th life',
      '2023/7', 'Ban Ji-eum (Shin Hye-sun) is a girl who has been repeating her life through reincarnation for nearly a thousand years, and can remember all her past lives. After her eighteenth life is cut short due to a tragic accident, she decides to reconnect with the man from her previous life in her nineteenth one.',
    languageTitle,
    '이번 생도 잘 부탁해',
    genre,
    'Fantasy, Romance',
    author,
    'Choi Young-lim',
    director,
    'Lee Na-jung',
    orgCtry,
    'South Korea',
    releaseChanl,
    'tvN',
    //see19List,
    2,
    '',
  ),
  MovieVO(
      'https://bantenraya.co.id/wp-content/uploads/2023/07/Capture-29-20.jpg',
      'https://i.mydramalist.com/0w4EeK_4f.jpg',
      'King The Land ',
      '2023/7',
      'King the Land tells the story of Goo Won (Lee Jun-ho) who is the heir of The King Group, a luxury hotel conglomerate, who was thrown into an inheritance war, and Cheon Sa-rang (Im Yoon-ah), a hotelier who always has a smile on her face till she meets Goo Won.',
    languageTitle,
    '킹더랜드',
    genre,
    'Romantic, comedy',
    author,
    'Choi Rom',
    director,
    'Im Hyun-wook',
    orgCtry,
    'South Korea',
    releaseChanl,
    'JTBC',
    //kingLandList,
    1,
    '',
  ),
  MovieVO(
      'https://thailand.postsen.com/content/uploads/2023/07/19/7c018156b2.jpg',
      'https://64.media.tumblr.com/0ce540ab6e0302bd44ae0566eaa533b6/e86af0e37de0e456-ea/s1280x1920/9bb46f258cd2621bacd632b08d24b29a1b3437fd.jpg',
      'The Legend of Anle',
      '2023/7',
      'This is a sad and touching love story between Di Ziyuan (played by Dilraba Dilmurat) and Crown Prince Han Ye (played by Gong Jun). Ten years ago, her family was wiped out and Ziyuan was the sole survivor. For the peace of the nation and to uncover the truth of how had the current imperial family ascended to the throne, she enters the imperial court under the name of Ren Anle. Ziyuan becomes acquainted with the Crown Prince and they began to investigate a case of foreign aggression against the nation. Though love starts to blossom between the two, the enmity between their families over the Di family massacre puts a tension on the relationship between.',
    languageTitle,
    '安乐传',
    genre,
    'Historical, Romance',
    author,
    'The Emperor\'s Book" (帝皇书) by Xing Ling',
    director,
    'Cheng Zhi Chao, Ma Hua Gan, Su Fei',
    orgCtry,
    'China',
    releaseChanl,
    'Youku',
    //theAnleList,
    9,
    '',
  ),
];

List<MovieVO> nowPlayingMovieList = [
  MovieVO(
    'https://bantenraya.co.id/wp-content/uploads/2023/07/Capture-29-20.jpg',
    'https://i.mydramalist.com/0w4EeK_4f.jpg',
    'King The Land ',
    '2023/7',
    'King the Land tells the story of Goo Won (Lee Jun-ho) who is the heir of The King Group, a luxury hotel conglomerate, who was thrown into an inheritance war, and Cheon Sa-rang (Im Yoon-ah), a hotelier who always has a smile on her face till she meets Goo Won.',
    languageTitle,
    '킹더랜드',
    genre,
    'Romantic, comedy',
    author,
    'Choi Rom',
    director,
    'Im Hyun-wook',
    orgCtry,
    'South Korea',
    releaseChanl,
    'JTBC',
    //kingLandList,
    1,
    '',
  ),
  MovieVO(
    'https://www.tamilanjobs.com/wp-content/uploads/2023/05/see-you-in-my-19th-life-1_169.jpeg',
    'https://i.mydramalist.com/2wm4Ad_2f.jpg',
    'See you in my 19th life',
    '2023/7',
    'Ban Ji-eum (Shin Hye-sun) is a girl who has been repeating her life through reincarnation for nearly a thousand years, and can remember all her past lives. After her eighteenth life is cut short due to a tragic accident, she decides to reconnect with the man from her previous life in her nineteenth one.',
    languageTitle,
    '이번 생도 잘 부탁해',
    genre,
    'Fantasy, Romance',
    author,
    'Choi Young-lim',
    director,
    'Lee Na-jung',
    orgCtry,
    'South Korea',
    releaseChanl,
    'tvN',
    //see19List,
    3,
    '',
  ),
  MovieVO(
    'https://thailand.postsen.com/content/uploads/2023/07/19/7c018156b2.jpg',
    'https://64.media.tumblr.com/0ce540ab6e0302bd44ae0566eaa533b6/e86af0e37de0e456-ea/s1280x1920/9bb46f258cd2621bacd632b08d24b29a1b3437fd.jpg',
    'The Legend of Anle',
    '2023/7',
    'This is a sad and touching love story between Di Ziyuan (played by Dilraba Dilmurat) and Crown Prince Han Ye (played by Gong Jun). Ten years ago, her family was wiped out and Ziyuan was the sole survivor. For the peace of the nation and to uncover the truth of how had the current imperial family ascended to the throne, she enters the imperial court under the name of Ren Anle. Ziyuan becomes acquainted with the Crown Prince and they began to investigate a case of foreign aggression against the nation. Though love starts to blossom between the two, the enmity between their families over the Di family massacre puts a tension on the relationship between.',
    languageTitle,
    '安乐传',
    genre,
    'Historical, Romance',
    author,
    'The Emperor\'s Book" (帝皇书) by Xing Ling',
    director,
    'Cheng Zhi Chao, Ma Hua Gan, Su Fei',
    orgCtry,
    'China',
    releaseChanl,
    'Youku',
    //theAnleList,
    9,
    '',
  ),
  MovieVO(
    'https://media.kbizoom.com/media/2023/05/09031836/kim-tae-hee-lim-ji-yeon-11-051523.jpg',
    'https://upload.wikimedia.org/wikipedia/en/e/e8/Lies_Hidden_in_My_Garden.png',
    'Lies Hidden in Garden',
    '2023/7',
    'The series follows the story of a woman named Moon Joo-ran (Kim Tae-hee) whose perfectly crafted life gets disturbed by a strange smell in her backyard.',
    languageTitle,
    '마당이 있는 집',
    genre,
    'Suspense thriller, Mystery',
    author,
    'Gianni',
    director,
    'Jung Ji-hyun, Heo Seok-won',
    orgCtry,
    'South Korea',
    releaseChanl,
    'ENA',
    //liesList,
    8,
    '',
  ),
  MovieVO(
    '',
    'https://i.mydramalist.com/vXvZnB_4f.jpg',
    'Sao Chai Delivery',
    '2023/7',
    'description',
    languageTitle,
    '힙하게',
    genre,
    'Comedy drama, Thriller',
    author,
    'Lee Nam-gyu, Oh Bo-hyeon, Kim Da-hee',
    director,
    'Kim Seok-yoon, Choi Bo-yoon',
    orgCtry,
    'South Korea',
    releaseChanl,
    'JTBC, Netflix',
    //see19List,
    10,
    '',
  ),
];

List<MovieVO> comingSoonMovieList = [
  MovieVO(
    'https://www.pinkvilla.com/images/2023-06/1677233693_behind-your-touch_640*360.jpg',
    'https://i.mydramalist.com/jQ0rBv_4f.jpg',
    'Behind Your Touch',
    '2023/8',
    'A veterinarian with psychometric powers, and a hot-blooded detective who fall in love with each other while solving minor crime cases in a small town in Mujin, Chungcheong-do.',
    languageTitle,
    '힙하게',
    genre,
    'Comedy drama, Thriller',
    author,
    'Lee Nam-gyu, Oh Bo-hyeon, Kim Da-hee',
    director,
    'Kim Seok-yoon, Choi Bo-yoon',
    orgCtry,
    'South Korea',
    releaseChanl,
    'JTBC, Netflix',
    //hipList,
    5,
    'https://youtu.be/Ncnszkh_jCU',
  ),
  MovieVO(
    'https://bltai.com/wp-content/uploads/2023/01/20230112_044128-scaled.jpg',
    'https://i.mydramalist.com/jRvkd_4f.jpg',
    'Cherry Magic thai Ver',
    '2023/8',
    'Having never had sex in his life, after Kiyoshi Adachi reaches his 30th birthday he becomes a "wizard": he develops an ability to hear the thoughts of other people by touching them. One day, he discovers that his popular co-worker, Yuichi Kurosawa, is in love with him. While dealing with the awkwardness of being able to hear Kurosawa\'s rather forthright feelings towards him, Adachi comes to terms with how much Kurosawa values him and starts to develop reciprocal feelings of his own',
    languageTitle,
    '-',
    genre,
    '-',
    author,
    '-',
    director,
    '-',
    orgCtry,
    'Thailand',
    releaseChanl,
    'GMMTV',
    //cherryList,
    6,
    'https://youtu.be/gRZdKrC-lic',

  ),
  MovieVO(
    'https://www.cpophome.com/wp-content/uploads/2022/09/Go-Princess-Go-2.jpg',
    'https://i.mydramalist.com/pLZ1n_3f.jpg',
    'The Princess and the Werewolf',
    '2023/8',
    'Princess Qi Pa wakes up to find herself abducted into the fantastical and surreal world of the Beast-Turning Tribe. She is forced into becoming the bride of the Beast-Turning King, Kui Mu Lang. Despite Qi Pa\'s repeated attempts to escape, her life is further disrupted by a man named Li Xiong. Li Xiong only appears during the day, and Kui Mu Lang only appears at night. Unbeknownst to Qi Pa, she has stumbled upon a shocking secret of the Beast-Turning Tribe. As mischievous and lively as she is, Qi Pa gradually finds her way into the heart of the domineering Wolf King. How will the beauty and the "beast" fall in love? A journey filled with laughter, sweetness, and heart-wrenching moments is about to unfold',
    languageTitle,
    '-',
    genre,
    '-',
    author,
    '-',
    director,
    '-',
    orgCtry,
    'China',
    releaseChanl,
    'Youku',
    //goPrincessList,
    7,
    'https://youtu.be/te3tOFVqeKo',
  ),
  MovieVO(
    'https://photos.hancinema.net/photos/photo1685701.jpg',
    'https://upload.wikimedia.org/wikipedia/en/thumb/9/91/Destined_With_You.jpg/250px-Destined_With_You.jpg',
    'Destined With You',
    '2023/8',
    'Destined With You tells the story about an irresistible romance between Lee Hong-jo (Jo Bo-ah) and Jang Shin-yu (Rowoon) with the storyline revolving around a forbidden book that was thoroughly sealed 300 years ago, landing in the hands of Hong-jo after obtaining it with Shin-yu becoming the victim of the forbidden book due to the curse caused by the book.',
    languageTitle,
    '이 연애는 불가항력',
    genre,
    'Fantasy, Romance',
    author,
    'Noh Ji-sul',
    director,
    'Nam Ki-hoon',
    orgCtry,
    'South Korea',
    releaseChanl,
    'JTBC',
    //DestinedList,
    4,
    ''
  ),
  MovieVO(
    'https://www.nme.com/wp-content/uploads/2023/06/moving-disney-plus-premiere-date-696x442.jpg',
    'https://m.media-amazon.com/images/M/MV5BM2RmYWY0NjYtM2Y3Ni00YmUxLTg0OTUtNWNlYjJhNmYyNjE2XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg',
    'Moving',
    '2023/8',
    'Three teenagers concealing their superpowers and their parents who have lived with painful secrets facing great danger over generations. Three teenagers concealing their superpowers and their parents who have lived with painful secrets facing great danger over generations.',
    languageTitle,
    '무빙',
    genre,
    'Action, Supernatural, Fantasy',
    author,
    'Moving; by Kang Full',
    director,
    'Park In-jae',
    orgCtry,
    'South Korea',
    releaseChanl,
    'Disney+',
    //movingList,
    10,
    ''
  ),
];

List<BnrImageVO> bnrImgList = [
  BnrImageVO(0, 'https://www.cpophome.com/wp-content/uploads/2022/09/Go-Princess-Go-2.jpg'),
  BnrImageVO(1, 'https://bltai.com/wp-content/uploads/2023/01/20230112_044128-scaled.jpg'),
  BnrImageVO(2, 'https://cnovelholic.com/wp-content/uploads/2023/07/When-I-Fly-Towards-You-Drama-Review-poster-2.jpg'),

];

List<TrailerVO> trailerList = [
  TrailerVO('a', 'videoUrl', 'movieName', '2024'),
];

List<ActorVO> HidLoveList =[
  ActorVO('Chen Zheyuan', 'https://m.media-amazon.com/images/S/pv-target-images/d73f04beddff0cf396ed1ee210295282918d2e5dc4b6585a524f1e738bf00407.jpg'),
  ActorVO('Zhao Lusi', 'https://www.themoviedb.org/t/p/original/93yxGN5Ld0BSUKfQBtH6F3QIb7Q.jpg'),
  ActorVO('Victor Ma', 'https://m.media-amazon.com/images/M/MV5BODk0M2E3N2UtNTdhMC00ZmNjLTlkMTQtYTYwMDE4NGRjMDcwXkEyXkFqcGdeQXVyNDg5Mzk5Mg@@._V1_.jpg'),
];

List<ActorVO> kingLandList = [
  ActorVO('Lee Jun-ho', 'https://thesmartlocal.kr/wp-content/uploads/2022/11/Lee-Jun-Ho-7.jpg'),
  ActorVO('Im Yoon-ah', 'https://image.kpopmap.com/2019/02/yoona_profile_s_0215.jpg'),
  ActorVO('Go Won Hee', 'https://image.kpopmap.com/2022/04/Go-WonHee_profile_s_0221.jpg'),
  ActorVO('Kim Ga-eun', 'https://www.themoviedb.org/t/p/w500/t2haTBmIk1ru5gBj9lnVzWXIyAK.jpg'),
];

List<ActorVO> see19List = [
  ActorVO('Shin Hye-sun', 'https://asianwiki.com/images/5/59/Shin_Hye-Sun-1989-pt1.jpg'),
  ActorVO('Ahn Bo Hyun', 'https://www.themoviedb.org/t/p/original/at9mMdVdgYFj53bE3JhiLh4uc6B.jpg'),
  ActorVO('Ha Yoon-kyung', 'https://asianwiki.com/images/f/f0/Ha_Yoon-Kyung_%281992%29-p01.jpg'),

];

List<ActorVO> whenFlyList = [
  ActorVO('Zhou Yi Ran', 'https://wiki.d-addicts.com/images/a/a1/Zhou_Yi_Ran_%28actor%29.jpg'),
  ActorVO('Zhang Miao Yi', 'https://www.cpophome.com/wp-content/uploads/2022/06/Zhang-Miaoyi-2.jpg'),
  ActorVO('Bian Tian Yang', 'https://i.mydramalist.com/2wmVed_5c.jpg'),
];

List<ActorVO> DestinedList = [
  ActorVO('RO Woon', 'https://www.themoviedb.org/t/p/w500/sWf7wAG4upRgIkWuDfNvUog1UHc.jpg'),
  ActorVO('Jo Bo-ah', 'https://www.themoviedb.org/t/p/w500/1torx99sDl20pTzMI9XHaPuVP96.jpg'),
  ActorVO('Kim Yura', 'https://image.kpopmap.com/2020/05/Girls-Day-Yura.png'),

];

List<ActorVO> hipList=[
  ActorVO('Joo Min-kyung', 'https://i.pinimg.com/236x/68/12/62/68126251ded093aff7fc4b2b283f4440.jpg'),
  ActorVO('Han Ji-min', 'https://media.suara.com/pictures/653x366/2021/09/02/66943-han-ji-min-dan-shin-ha-kyun-soompicom.jpg'),
  ActorVO('SUHO', 'https://i.pinimg.com/236x/16/e4/41/16e441fb28d2d392ce7a65259fe18366.jpg'),

];

List<ActorVO> cherryList =[
  ActorVO('Tay Tawan ', 'https://ekladata.com/39qh-4CfhartNDQmhL3DlVSmAXI.jpg'),
  ActorVO('New Thitipoom ', 'https://i.mydramalist.com/66rn2_5f.jpg'),
  ActorVO('Junior Panachai ', 'https://i.mydramalist.com/ZYR07_5f.jpg'),
];

List<ActorVO> goPrincessList = [
  ActorVO('Wu Xuan Yi', 'https://wiki.d-addicts.com/images/4/49/Wu_Xuan_Yi.png'),
  ActorVO('Chen Zheyuan', 'https://m.media-amazon.com/images/S/pv-target-images/d73f04beddff0cf396ed1ee210295282918d2e5dc4b6585a524f1e738bf00407.jpg'),
  ActorVO('Wang Lu Qing', 'https://wiki.d-addicts.com/images/5/5d/Wang_Lu_Qing.jpeg'),

];

List<ActorVO> liesList = [
  ActorVO('Kim Tae-hee', 'https://en.kepoper.com/wp-content/uploads/2021/09/kim-tae-hee-profile-and-drama-list.jpg'),
  ActorVO('Lim Ji-yeon', 'https://static.promediateknologi.id/crop/0x16:828x629/750x500/webp/photo/2023/01/01/3776662011.jpg'),
  ActorVO('Choi Jae-rim', 'https://asianwiki.com/images/0/04/Choi_Jae-Rim-1985-p1.jpeg'),
];

List<ActorVO> theAnleList = [
  ActorVO('Dilraba Dilmurat', 'https://www.themoviedb.org/t/p/w500/dw2in9h6auSOZ8EWZs1gqqs3KRA.jpg'),
  ActorVO('Gong Jun', 'https://i.mydramalist.com/6xAnO_5f.jpg'),
  ActorVO('Liu Yuning', 'https://wiki.d-addicts.com/images/4/4c/Liu_Yu_Ning.jpeg'),

];

List<ActorVO> movingList = [
  ActorVO('Ryu Seung Ryong', 'https://momentokdrama.com.br/wp-content/uploads/2021/11/Han-Hyo-Joo-1.jpg'),
  ActorVO('Han Hyo Joo', 'https://asianwiki.com/images/6/69/Han_Hyo-Joo-1987-p1.jpeg'),
  ActorVO('Zo In Sung', 'https://en.kepoper.com/wp-content/uploads/2021/11/jo-in-sung-profile-758x504.jpg'),
  ActorVO('Cha Tae Hyun', 'https://i.mydramalist.com/jO7J8_5c.jpg')
];

List<String> dramaNameList = [
  'King The Land',
  'See You in my 19th Life',

];

//List<>

List<Map<String, dynamic>> str = [
  {
    'img_url':
        'https://img.freepik.com/free-vector/cinema-movie-showtime-with-film-strip-background_1017-33455.jpg',
    'movie_title': 'LOVE AGAIN',
    'release_year': "2000",
  },
  {
    'img_url':
        'https://www.tranzistoraki.com/wp-content/uploads/2021/01/Best-option-to-view-movies.jpeg',
    'movie_title': 'My Fault',
    'release_year': "2000",
  },
];
