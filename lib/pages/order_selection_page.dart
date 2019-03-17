import 'package:flutter/material.dart';
import '../widgets/heading.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class OrderSelectionPage extends StatefulWidget {
  @override
  _OrderSelectionPageState createState() => _OrderSelectionPageState();
}

class _OrderSelectionPageState extends State<OrderSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Heading1("Drinks"),
              Card(
                child: ListTile(
                  title: Text("Coca-Cola"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Pepsi"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Ice Tea"),
                ),
              ),
              Heading1("Snacks"),
              Card(
                child: ListTile(
                  title: Text("Burger"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Sandwich"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Maggi"),
                ),
              ),
              Container(
                height: 50.0,
              ),
              Container(
                height: 100.0,
                child: WaveWidget(
                  config: CustomConfig(
                    gradients: [
                      [Colors.blue, Colors.blue],
                      [Colors.blue[800], Colors.blue[800]],
                      [Colors.blueAccent, Colors.blueAccent],
                      [Colors.blue[200], Colors.blue[200]],
                    ],
                    durations: [35000, 19440, 10800, 6000],
                    heightPercentages: [0.20, 0.23, 0.25, 0.30],
                    blur: MaskFilter.blur(BlurStyle.outer, 10),
                    gradientBegin: Alignment.bottomLeft,
                    gradientEnd: Alignment.topRight,
                  ),
                  size: Size(
                    double.infinity,
                    100.0,
                  ),
                ),
              ),
            ]),
          ),
          // SliverFillRemaining(),
        ],
      ),
    );
  }
}
