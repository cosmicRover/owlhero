import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/left_text_component.dart';

class MatchesListTile extends StatelessWidget {
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            "https://i.pinimg.com/736x/db/da/93/dbda933c564613b17c8cf85a21f60e7b.jpg",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [LeftTextComponent("John Doe", 26, Colors.white)],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Accept",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: _colors.appBlue, // background
                        onPrimary: Colors.white, // foreground
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: _colors.appLightBlue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: Text(
                          "Decline",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
