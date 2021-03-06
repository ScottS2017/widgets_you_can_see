import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/build_app_bar.dart';

class IconExamples extends StatelessWidget {
  const IconExamples({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 32,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: title),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                const ExampleIconCustomWidget(
                  color: Colors.green,
                  icon: Icon(
                    Icons.traffic,
                    semanticLabel: 'Traffic Light',
                    size: 132,
                    color: Colors.white54,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                    gradient: const SweepGradient(
                      colors: [
                        Color(0xFFFB7EE4),
                        Color(0xFFB7459C),
                        Color(0xFF01D9FE),
                        Color(0xFF0185D0),
                        Color(0xFFFB7EE4),
                      ],
                      stops: [0.0, 0.25, 0.5, 0.75, 1],
                    ),
                  ),
                  child: const Icon(
                    Icons.audiotrack,
                    size: 132,
                    color: Colors.white24,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                    gradient: const RadialGradient(
                      colors: [
                        Color(0xFF01D9FE),
                        Color(0xFF0185D0),
                        Color(0xFFFB7EE4),
                        Color(0xFFB7459C),
                      ],
                      stops: [
                        0.3,
                        0.5,
                        0.8,
                        1,
                      ],
                      center: Alignment(0.0, 1.3),
                      focal: Alignment(0.0, 0.9),
                      focalRadius: 2.0,
                    ),
                  ),
                  child:
                      const Icon(Icons.audiotrack, size: 132, color: Colors.black38),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                const ExampleIconCustomWidget(
                  color: Colors.teal,
                  icon: Icon(
                    Icons.tv,
                    semanticLabel: 'Google Assistant',
                    size: 120,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExampleIconCustomWidget extends StatelessWidget {
  final Icon icon;
  final Color color;

  const ExampleIconCustomWidget({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          style: BorderStyle.solid,
          color: const Color(0xFFBBBBBB),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(
            color: Colors.black87,
            blurRadius: 12,
            offset: Offset(4, 6),
          ),
        ],
      ),
      child: icon,
    );
  }
}
