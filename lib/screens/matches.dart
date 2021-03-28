import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/left_text_component.dart';
import 'package:owlhero/components/matches_list_tile.dart';
import 'package:owlhero/components/messages_list_tile.dart';
import 'package:owlhero/components/text_component.dart';
import 'package:owlhero/screens/messages.dart';

class Matches extends StatelessWidget {
  final List<String> owls = [
    'John Harimon',
    'Hannah Kim',
    'Joel Torge',
  ];

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _colors = AppColors();

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => print("pressed nav"),
            icon: Icon(Icons.chat_bubble),
            color: _colors.appBeige,
            iconSize: 36,
          ),
        ],
      ),
      backgroundColor: _colors.appDarkTeal,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 12, bottom: 16),
            child: LeftTextComponent("Matches", 24, _colors.appBeige),
          ),
          SizedBox(
              height: _height / 3,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12, left: 12),
                      child: GestureDetector(
                        child: MatchesListTile('${owls[index]}', _colors),
                        onTap: () {
                          print("tapped matches");
                        },
                      ),
                    );
                  })),
          SizedBox(
            height: 34,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 16.0),
            child: LeftTextComponent("Messages", 24, _colors.appBeige),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12, left: 12.0),
                      child: GestureDetector(
                        child: MessagesListTile(),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Messages(
                                      "Jane Doe",
                                      "Hello there, I'd love to help you out at your school!",
                                      _colors)));
                        },
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
