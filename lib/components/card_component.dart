import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/text_component.dart';

class CardComponent extends StatelessWidget {
  final String _roleName;
  final _colors = AppColors();
//  final Image _image;

  CardComponent(this._roleName);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 600, minWidth: 299),
      height: 305,//change when content is present
      margin: EdgeInsets.only(left: 36, right: 36, top: 46),
      decoration: BoxDecoration(
        color: _colors.appLightBlue,
        border: Border.all(
//          color: Colors.black,
//          width: 16,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          TextComponent("${this._roleName}", 30, _colors.appLBlack, true),
        ],
      )
    );
  }
}
