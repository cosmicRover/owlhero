import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';

class ChatBar extends StatelessWidget {
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 22),
      child: Container(
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: _colors.appBeige),
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: _colors.appDarkTeal),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.add_circle_outline,
                color: _colors.appBeige,
              ),
              onPressed: null,
            ),
            Flexible(
              child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  )),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: _colors.appBeige,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
