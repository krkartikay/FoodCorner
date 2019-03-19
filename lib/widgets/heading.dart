import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  final String _text;

  Heading1(this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Text(
        _text,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      padding: EdgeInsets.all(32.0),
    );
  }
}

class Heading0nb extends StatelessWidget {
  final String _text;

  Heading0nb(this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Text(
        _text,
        style: TextStyle(
          fontSize: 48.0,
          // fontWeight: FontWeight.bold,
        ),
      ),
      padding: EdgeInsets.all(32.0),
    );
  }
}
