import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/text_component.dart';

class HeroSwipeView extends StatefulWidget {
  @override
  _HeroSwipeViewState createState() => _HeroSwipeViewState();
}

class _HeroSwipeViewState extends State<HeroSwipeView>
    with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "assets/teachone.jpg",
    "assets/teachone.jpg",
    "assets/teachone.jpg",
    "assets/teachone.jpg",
    "assets/teachone.jpg",
    "assets/teachone.jpg",
  ];

  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    CardController controller;

    return Scaffold(
        backgroundColor: _colors.appDarkTeal,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () => print("pressed nav"),
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
                swipeUp: true,
                swipeDown: true,
                orientation: AmassOrientation.BOTTOM,
                totalNum: welcomeImages.length,
                stackNum: 3,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardBuilder: (context, index) => Card(
                  child: Placeholder(),
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
