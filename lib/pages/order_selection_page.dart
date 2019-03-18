import 'package:flutter/material.dart';
import 'package:requests/requests.dart';
import '../widgets/heading.dart';
import '../widgets/custom_wave.dart';
import '../widgets/product_card.dart';
import '../models/product_data.dart';

class OrderSelectionPage extends StatefulWidget {
  final String backend = "http://192.168.225.242:5000";
  final String vendor = "NESCAFE";
  @override
  _OrderSelectionPageState createState() => _OrderSelectionPageState();
}

class _OrderSelectionPageState extends State<OrderSelectionPage> {
  bool loaded = false;
  ProductData productData;

  @override
  void initState() {
    _loadProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> productList = [];
    if (loaded) {
      productList = _buildProducts();
      productList.add(CustomWave());
    } else {
      productList = [Container(height: 500.0, child: Center(child: CircularProgressIndicator()))];
    }
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

  void _loadProducts() {
    Requests.get(widget.backend + "/api/products/" + widget.vendor)
    .then((response) {
      productData = ProductData(response);
      setState(() { loaded = true; });
    }).catchError((error) {
      print("Error fetching products: $error");
    });
  }

  List<Widget> _buildProducts() {
    List<Widget> widgets = [];

    for (String prType in productData.data.keys) {
      widgets.add(Heading1(prType.toUpperCase()));
      List<Widget> products = [];
      List w = productData.data[prType].map((product) => ProductCard(product)).toList();
      for (var item in w) {
        products.add(item);
      }
      widgets.addAll(products);
    }

    return widgets;
  }
}
