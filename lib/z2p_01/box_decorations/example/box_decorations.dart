import 'package:flutter/material.dart';

import '/infrastructure/app_colors.dart';
import '/infrastructure/build_app_bar.dart';

class BoxDecorations extends StatelessWidget {
  const BoxDecorations({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: title),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),

                /// A basic borders and radius example

                Container(
                  padding: const EdgeInsets.all(30),
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0185D0),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: const Color(0xFFFF3780),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                /// Using BorderSides
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFF0185D0),
                      border: Border(
                        top: BorderSide.none,
                        bottom: BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide(
                          style: BorderStyle.solid,
                          color: Color(0xFFFF3780),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),

                /// A basic DecorationImage
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/images/F.png',
                      ),
                    ),
                  ),
                ),

                /// Adding a Shadow
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        offset: Offset(8, 8),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),

                /// borderRadius of half height and width will get you a circle. This is used there to create a "3D Medallion" look.
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color(0xFF777777),
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
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
                ),

                /// No Container color results in a transparent Container. Here, we're using it to show you what's really happening with a Shadow, and how the Shadow will be cast from the whole object, regardless of opacity.
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: AppColors.appThemePrimaryDarkBlue,
                      width: 3,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(16, 16),
                      ),
                    ],
                  ),
                ),

                /// A basic LinearGradient, aligned at an angle
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.appThemePrimaryDarkBlue,
                        Color(0xFF0185D0),
                      ],
                      stops: [0.0, 1.0],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),

                /// By placing both stops at the same point, the "fade" will take place instantly. By aligning the dark blue to topCenter, but the light blue to bottomRight, we get an angled effect that's not perfectly aligned with the corners.
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.appThemePrimaryDarkBlue,
                        Color(0xFF0185D0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      stops: [0.50, 0.50],
                    ),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                  ),
                ),

                /// A SweepGradient, shown in the "3d Medallion". Note that the first and last colors in the list have to be the same to avoid a hard edge.
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
                ),

                /// A basic RadialGradient. ***Note that the radius argument is expressed as a percentage of the *shortest side* of your object. Here, the radius has to be 0.5 in order to make the whole circle fill with the gradient. If you make the number smaller, then the last color will create a band that encloses the gradient. Experiment and see...
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
                        spreadRadius: 0,
                      ),
                    ],
                    gradient: const RadialGradient(
                      colors: [
                        Colors.white,
                        Color(0xFFB7459C),
                        Colors.white,
                        Color(0xFFB7459C),
                        Colors.white,
                        Color(0xFFB7459C),
                        Colors.white,
                        Color(0xFFB7459C),
                      ],
                      stops: [0.0, 0.2, 0.2, 0.5, 0.5, 0.75, 0.75, 1.0],
                      radius: .5,
                    ),
                  ),
                ),

                /// By shifting the center, focal and focalRadius of a RadialGradient, we can create a sunrise-type effect for our fake phone screen
                Container(
                  height: 400,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(50),
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
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
