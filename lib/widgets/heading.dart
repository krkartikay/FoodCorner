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
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal:20.0),
    );
  }
}

class Heading1nb extends StatelessWidget {
  final String _text;

  Heading1nb(this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Text(
        _text,
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
      padding: EdgeInsets.fromLTRB(20.0,32.0,20.0,10.0),
    );
  }
}

class Heading1x extends StatelessWidget {
  final String _text;

  Heading1x(this._text);

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
      padding: EdgeInsets.fromLTRB(20.0,32.0,20.0,10.0),
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
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal:20.0),
    );
  }
}

class PaddedText extends StatelessWidget {
  final String _text;
  final double size;
  final double top;
  final double bottom;
  final bool bold;
  final Color textcolor;

  PaddedText(this._text, {this.size = 14.0, this.textcolor = Colors.black, this.top=20.0, this.bottom=20.0, this.bold=false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Text(
        _text,
        style: TextStyle(
          fontSize: size,
          color: textcolor,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal
        ),
      ),
      padding: EdgeInsets.fromLTRB(20.0,top,20.0,bottom),
    );
  }
}