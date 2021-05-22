import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/pages/welcome.dart';
import 'package:o1_widgets_you_can_see/res/res_themes.dart';

void main() => runApp(WidgetsYouCanSee());

/// Repo URL:  bit.ly/Z2P-1

class WidgetsYouCanSee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Z2P Widgets You Can See',
      theme: ResThemes.tealTheme,
      home: const Welcome(),
    );
  }
}
