import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/left_text_component.dart';
import 'package:owlhero/components/text_component.dart';

class MessagesListTile extends StatelessWidget {
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(
            "assets/hero.png",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [LeftTextComponent("Jane Doe", 26, Colors.white)],
                ),
                Text("Hello there, thank you so much for matching!", style: TextStyle(
                  color: Colors.white
                ),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
