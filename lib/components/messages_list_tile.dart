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
          backgroundImage: NetworkImage(
            "https://www.vhv.rs/dpng/d/12-127480_super-hero-clip-art-png-transparent-png.png",
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
                Text("Hello there, I'd love help out at your school!", style: TextStyle(
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
