import "package:flutter/material.dart";
import 'package:kosi_connect/Sections/AboutSection/Components/about_info_sign.dart';
import "package:shape_of_view/shape_of_view.dart";
import "package:assorted_layout_widgets/assorted_layout_widgets.dart";

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Box(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 70),
      child: ShapeOfView(
        elevation: 10,
        height: _screenSize.height * 0.7,
        shape: DiagonalShape(
            position: DiagonalPosition.Bottom,
            direction: DiagonalDirection.Right,
            angle: DiagonalAngle.deg(angle: 4)),
        child: Center(
          child: AboutInfoSign(),
        ),
      ),
    );
  }
}
