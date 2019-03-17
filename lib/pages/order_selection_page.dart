import 'package:flutter/material.dart';
import '../widgets/heading.dart';
import '../widgets/custom_wave.dart';
import '../widgets/product_card.dart';

class OrderSelectionPage extends StatefulWidget {
  @override
  _OrderSelectionPageState createState() => _OrderSelectionPageState();
}

class _OrderSelectionPageState extends State<OrderSelectionPage> {
  bool loaded = false;
  Map<String, List<Map<String, dynamic>>> productData = {
    "drinks": [
      {"name": "Coca-Cola", "price": 20, "stock": 10},
      {"name": "Maaza", "price": 25, "stock": 2},
      {"name": "Ice Tea", "price": 20, "stock": 10},
    ],
    "snacks": [
      {"name": "Burger", "price": 25, "stock": 4},
      {"name": "Cheese Burger", "price": 35, "stock": 3},
      {"name": "Lays", "price": 20, "stock": 10},
    ]
  };

  @override
  Widget build(BuildContext context) {
    var productList = _buildProducts();
    productList.add(CustomWave());

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('NESCAFE'),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(productList),
          ),
          // SliverFillRemaining(),
        ],
      ),
    );
  }

  List<Widget> _buildProducts() {
    List<Widget> widgets = [];

    for (String prType in productData.keys) {
      widgets.add(Heading1(prType.toUpperCase()));
      List<Widget> products = [];
      products.addAll(productData[prType]
          .map((product) => ProductCard(product)));
      widgets.addAll(products);
    }

    return widgets;
  }
}
