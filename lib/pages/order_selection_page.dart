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
      {"name": "Coca-Cola", "price": 20, "stock": 10, "pid": 1},
      {"name": "Maaza", "price": 25, "stock": 2, "pid": 2},
      {"name": "Ice Tea", "price": 20, "stock": 10, "pid": 3},
    ],
    "snacks": [
      {"name": "Burger", "price": 25, "stock": 4, "pid": 4},
      {"name": "Cheese Burger", "price": 35, "stock": 3, "pid": 5},
      {"name": "Lays", "price": 20, "stock": 10, "pid": 6},
    ]
  };
  Map<int, int> prices = {1: 20, 2: 25, 3: 20, 4: 25, 5: 35, 6: 20};
  Map<int, int> selectedProducts = {};

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
          .map((product) => ProductCard(product, (int pid, int value) {
                setState(() {
                  selectedProducts[pid] = value;
                });
              })));
      widgets.addAll(products);
    }

    widgets.add(
      Card(
        child: Column(
          children: [
            Heading1("Total Order:"),
            Heading0nb("\$${totalOrderPrice()}"),
            Row(
              children: <Widget>[
                Expanded(child: Container(),),
                FlatButton(child: Text("Cancel", style: TextStyle(color: Colors.red),), onPressed: (){},),
                SizedBox(width: 10.0,),
                RaisedButton(child: Text("Confirm", style: TextStyle(color: Colors.white),), onPressed: (){}, color: Colors.blue, elevation: 3.0,),
                SizedBox(width: 10.0,),
              ],
            ),
            SizedBox(height: 10.0,)
          ],
        ),
      ),
    );

    return widgets;
  }

  int totalOrderPrice() {
    int s = 0;
    for (var pid in selectedProducts.keys) {
      s += selectedProducts[pid] * prices[pid];
    }
    return s;
  }
}
