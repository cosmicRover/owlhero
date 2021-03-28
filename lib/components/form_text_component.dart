import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormTextComponent extends StatelessWidget {
  final String _text;
  final double _size;
  final Color _color;
  final bool _isBold;
  final FontWeight _weight;

  const FormTextComponent(
      this._text, this._size, this._color, this._isBold, this._weight);

  @override
  Widget build(BuildContext context) {
    if (_isBold) {
      return Align(
        //Align might not be necessary
        alignment: Alignment.topLeft,
        child: Text(
          "$_text",
          style: GoogleFonts.workSans(
            fontSize: _size,
            fontWeight: _weight,
            color: _color,
          ),
          textAlign: TextAlign.left,
        ),
      );
    } else {
      return Align(
        alignment: Alignment.topLeft,
        child: SelectableText(
          "$_text",
          toolbarOptions: ToolbarOptions(copy: true),
          style: GoogleFonts.workSans(fontSize: _size, color: _color),
          textAlign: TextAlign.left,
        ),
      );
    }
  }
}
