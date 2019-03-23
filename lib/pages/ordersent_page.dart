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
                boxShadow: [
                  BoxShadow(blurRadius: 20.0, color: Colors.lightGreen)
                ],
              ),
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 150.0,
              ),
            ),
          ),
          Center(child: Heading1nb("Order Confirmed!")),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PaddedText("Order Details", size: 25.0,),
                  Row(
                    children: <Widget>[
                      PaddedText("Order ID: ", size: 20.0, top: 2.0, bottom: 2.0,),
                      Expanded(child: Container(),),
                      PaddedText("357128", size: 20.0, bold: true, top: 2.0, bottom: 2.0,),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      PaddedText("Total Amount: ", size: 20.0, top: 2.0, bottom: 2.0,),
                      Expanded(child: Container(),),
                      PaddedText("55\$", size: 20.0, bold: true, top: 2.0, bottom: 2.0,),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      PaddedText("Estimated Time: ", size: 20.0, top: 2.0, bottom: 2.0,),
                      Expanded(child: Container(),),
                      PaddedText("5 minutes", size: 20.0, bold: true, top: 2.0, bottom: 2.0,),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
