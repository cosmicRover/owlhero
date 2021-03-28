import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/screens/hero-form.dart';
import 'package:owlhero/screens/hero-swipe-view.dart';
import 'package:owlhero/screens/matches.dart';
import 'package:owlhero/screens/messages.dart';
import 'package:owlhero/screens/owl-form.dart';
import 'package:owlhero/screens/roles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.teal[700],
            appBarTheme: AppBarTheme(color: _colors.appGreen),
            accentColor: Colors.blueAccent,
            hintColor: Colors.white,
            colorScheme: ColorScheme.light(
              primary: _colors.appRed,
            )),
        debugShowCheckedModeBanner: false,
        home: HeroForm()
//        Messages("Jane Doe",
//        "Hello there, I'd love to help you out at your school!", _colors)
        );
  }
}
