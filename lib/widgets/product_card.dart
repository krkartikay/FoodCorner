import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(product['name'].toString()),
        subtitle: Text("Price: \$${product['price']}.   ${product['stock']} left in stock"),
        // TODO implement slider functionality here
        trailing: Icon(Icons.add),
      ),
    );
  }
}
