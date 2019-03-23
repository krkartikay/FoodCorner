import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class CustomWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container();
    return Column(children: [
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
    ]);
  }
}
