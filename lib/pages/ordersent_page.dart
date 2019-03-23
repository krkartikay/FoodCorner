import 'package:flutter/material.dart';
import '../widgets/heading.dart';

class OrderSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.white,
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150.0),
                color: Colors.lightGreen,
                border: Border.all(color: Colors.green, width: 5.0),
                boxShadow: [BoxShadow(blurRadius: 20.0, color: Colors.lightGreen)],
              ),
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 150.0,
              ),
            ),
          ),
          Center(child: Heading1nb("Order Confirmed!")),
        ],
      ),
    );
  }
}
