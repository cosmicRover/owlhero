import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeftTextComponent extends StatelessWidget {
  final String _text;
  final double _size;
  final Color _color;

  const LeftTextComponent(this._text, this._size, this._color);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SelectableText("$_text",
          toolbarOptions: ToolbarOptions(copy: true),
          style: GoogleFonts.workSans(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: _size,
              color: _color)),
    );
  }
}