import 'package:flutter/material.dart';
import 'steppertouch.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final Function onChanged;
  ProductCard(this.product, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          product['name'].toString(),
          style: TextStyle(fontSize: 18.0),
        ),
        subtitle: Text(
          "Price: \$${product['price']}.   ${product['stock']} left in stock",
        ),
        trailing: StepperTouch(
          color1: Colors.blue,
          color2: Colors.blue,
          onChanged: (int value) {
            onChanged(product['pid'], value);
          },
        ),
      ),
    );
  }
}
