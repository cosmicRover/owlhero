import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComponent extends StatelessWidget {
  final String _text;
  final double _size;
  final Color _color;
  final bool _isBold;

  const TextComponent(this._text, this._size, this._color, this._isBold);

  @override
  Widget build(BuildContext context) {
    if (_isBold) {
      return Align(
        //Align might not be necessary
        alignment: Alignment.center,
        child: Text(
          "$_text",
          style: GoogleFonts.workSans(
            fontSize: _size,
            fontWeight: FontWeight.w500,
            color: _color,
          ),
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return Align(
        alignment: Alignment.center,
        child: SelectableText(
          "$_text",
          toolbarOptions: ToolbarOptions(copy: true),
          style: GoogleFonts.workSans(fontSize: _size, color: _color),
          textAlign: TextAlign.center,
        ),
      );
    }
  }
}
