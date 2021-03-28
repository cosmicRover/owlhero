import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/card_component.dart';
import 'package:owlhero/components/text_component.dart';

class Roles extends StatelessWidget {
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors.appDarkTeal,
        body: ListView(
      children: [
        TextComponent("Choose your role", 36, _colors.appBeige, true),
//        SizedBox(
//          height: 26,
//        ),
        GestureDetector(
          onTap: () => print("Component tapped"),
          child: CardComponent("Owl (teacher)"),
        ),
//        SizedBox(
//          height: 36,
//        ),
        GestureDetector(
          onTap: () => print("Component tapped"),
          child: Column(
            children: [
              CardComponent("Hero (helper)"),
            ],
          ),
        )
      ],
    ));
  }
}
