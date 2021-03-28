import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/image_container.dart';
import 'package:owlhero/components/text_component.dart';
import 'package:owlhero/screens/matches.dart';
import 'package:owlhero/services/db_read.dart';

class HeroSwipeView extends StatefulWidget {
  @override
  _HeroSwipeViewState createState() => _HeroSwipeViewState();
}

class _HeroSwipeViewState extends State<HeroSwipeView>
    with TickerProviderStateMixin {
  List<String> owlImages = [
    'assets/owl1.png',
    'assets/owl2.png',
    'assets/owl3.png',
    'assets/owl4.png'
  ];

//  List<String> owlBio = [
//    'I’m a chemistry teacher in high school! I’d love a helping hand with grading homework and tutoring students. ',
//    'I’m a 4th grade teacher and I would appreciate having someone develop the curriculum alongside me. ',
//    'I’m an 8th grade teacher and need an extra hand in helping my students prepare for middle school exams!',
//    'I’m a 1st grade teacher and would like someone to help me organize fun and educational trips.',
//  ];
//
//  List<String> owls = [
//    'John Harimon',
//    'Hannah Kim',
//    'Joel Torge',
//    'Kristy Lau'
//  ];
//  Future<List<String>> data;
//
//  @override
//  void initState() {
//    final db = DatabaseRead();
//    data = db.fetchSessions();
//    super.initState();
//  }

  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    CardController controller;

    return Scaffold(
        backgroundColor: _colors.appDarkTeal,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Matches()));
              },
              icon: Icon(
                Icons.chat_bubble,
              ),
              color: _colors.appBeige,
              iconSize: 36,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: TextComponent(
                  "Owls that need your help", 36, _colors.appBeige, true),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: TinderSwapCard(
                swipeUp: false,
                swipeDown: false,
                orientation: AmassOrientation.BOTTOM,
                totalNum: owlImages.length,
                stackNum: 3,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardBuilder: (context, index) => Card(
                  child: ImageContainer('${owlImages[index]}',
                      '', ''),
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: TextComponent(
                  "Swipe right if you would like to help this owl, Swipe left if you would like to see another.",
                  18,
                  _colors.appBeige,
                  false),
            ),
          ],
        ));
  }
}
