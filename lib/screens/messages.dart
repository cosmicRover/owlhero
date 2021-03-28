import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/chat_bar.dart';
import 'package:owlhero/components/chat_bubble.dart';

class Messages extends StatelessWidget {
  final String name;
  final String message;
  final AppColors _colors;

  const Messages(this.name, this.message, this._colors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors.appDarkTeal,
      appBar: AppBar(
        title: Text(
          "${this.name}",
          style:
              TextStyle(color: _colors.appBeige, fontWeight: FontWeight.w900),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            reverse: true,
            children: [
              SizedBox(
                height: 50,
              ),
              ChatBubble(
                "Jane Doe",
                "10:03 am",
                "${this.message}",
                "assets/hero.png",
              ),
            ],
          ),
          Align(alignment: Alignment.bottomCenter, child: ChatBar()),
        ],
      ),
    );
  }
}
