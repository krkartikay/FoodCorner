import 'package:flutter/material.dart';
import '../widgets/vendor_card.dart';
import '../widgets/heading.dart';
import '../widgets/custom_wave.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bal = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FoodBuzz"),
        actions: <Widget>[
          // Icon(Icons.close),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(Duration(seconds: 1), (){
            setState(() {
              bal -= 55;
            });
          });
        },
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                  elevation: 3.0,
                  child: ListTile(
                    title: Text("Remaining Balance: "),
                    trailing: Heading1("\$$bal"),
                  ),
                )),
            VendorCard(
              title: "NESCAFE",
              subtitle: "Drinks, Snacks and More!",
              photo: "assets/img/nescafe.jpg",
              open: true,
            ),
            VendorCard(
              title: "AMUL",
              subtitle: "Are you hungry now?",
              photo: "assets/img/amul.jpeg",
              open: false,
            ),
            VendorCard(
              title: "4-H Food Court",
              subtitle: "Get some real healthy\nfood here!",
              photo: "assets/img/4h.png",
              open: true,
            ),
            CustomWave(),
          ],
        ),
      ),
    );
  }
}
