import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/res/res_themes.dart';
import 'package:o1_widgets_you_can_see/res/res_images.dart';

class Image_Examples extends StatelessWidget {
  const Image_Examples({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 32);

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = MediaQuery.of(context).size.width - 32;
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ///
            /// Raw images without any fit
            ///

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Text(
                'These are the Raw Images',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: const Offset(1.5, 1.5),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.asset(
                ResImages.jumping,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.owl,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.invertedJenny,
              ),
            ),

            ///
            /// BoxFit.fill
            ///

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'BoxFit.fill',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '(Aspect Ratio Not Maintained)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.asset(
                ResImages.jumping,
                fit: BoxFit.fill,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.owl,
                fit: BoxFit.fill,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.invertedJenny,
                fit: BoxFit.fill,
              ),
            ),

            ///
            /// BoxFit.contain
            ///
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'BoxFit.contain',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '(Aspect Ratio Is Maintained)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.asset(
                ResImages.jumping,
                fit: BoxFit.contain,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.owl,
                fit: BoxFit.contain,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.invertedJenny,
                fit: BoxFit.contain,
              ),
            ),

            ///
            /// BoxFit.cover
            ///
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'BoxFit.cover',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '(It will cover the entire Contianer by fitting the smaller side and cropping the larger one)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.asset(
                ResImages.jumping,
                fit: BoxFit.cover,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.owl,
                fit: BoxFit.cover,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.invertedJenny,
                fit: BoxFit.cover,
              ),
            ),

            ///
            /// BoxFit.fitHeight
            ///
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'BoxFit.fitHeight',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '( It could crop the width)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.asset(
                ResImages.jumping,
                fit: BoxFit.fitHeight,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.owl,
                fit: BoxFit.fitHeight,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.invertedJenny,
                fit: BoxFit.fitHeight,
              ),
            ),

            ///
            /// BoxFit.fitWidth
            ///
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'BoxFit.fitWidth',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '( It could crop the height)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.asset(
                ResImages.jumping,
                fit: BoxFit.fitWidth,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.owl,
                fit: BoxFit.fitWidth,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.invertedJenny,
                fit: BoxFit.fitWidth,
              ),
            ),

            ///
            /// BoxFit.none
            ///

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'BoxFit.none',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '( Let it Overflow)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.asset(
                ResImages.jumping,
                fit: BoxFit.none,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.owl,
                fit: BoxFit.none,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.invertedJenny,
                fit: BoxFit.none,
              ),
            ),

            ///
            /// BoxFit.scaleDown
            ///

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'BoxFit.scaleDown',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '(Shrink if too big, else do nothing)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: const Offset(1.5, 1.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.asset(
                ResImages.jumping,
                fit: BoxFit.scaleDown,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.owl,
                fit: BoxFit.scaleDown,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Container(
              height: heightAndWidth,
              width: heightAndWidth,
              color: Colors.teal,
              child: Image.network(
                ResImages.invertedJenny,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
