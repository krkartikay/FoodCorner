import 'package:flutter/material.dart';
import '../widgets/heading.dart';

class VendorCard extends StatelessWidget {
  final String title;
  final bool open;
  final String photo;
  final String subtitle;

  const VendorCard({Key key, this.title, this.open, this.photo, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Card(
        elevation: 3.0,
        child: Container(
          // height: 160.0,
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Heading1x(title),
                  PaddedText(
                    subtitle,
                    top: 20.0,
                    bottom: 5.0,
                  ),
                  PaddedText(
                    open ? "Open now!" : "CLOSED",
                    top: 5.0,
                    bottom: 30.0,
                    textcolor: open ? Colors.blue : Colors.red,
                  ),
                ],
              ),
              Expanded(child: Container(),),
              ClipRRect(
                borderRadius: new BorderRadius.circular(50.0),
                child: Image.asset(
                  photo,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
