import 'package:flutter/material.dart';
import '../widgets/vendor_card.dart';
import '../widgets/custom_wave.dart';

class HomePage extends StatelessWidget {
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
      body: ListView(
        children: <Widget>[
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
    );
  }
}
