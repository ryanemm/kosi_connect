import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:shape_of_view/shape_of_view.dart";
import 'package:kosi_connect/Components/flat_button.dart';
import 'package:kosi_connect/Sections/TopSection/about_info.dart';

class MobileHeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ShapeOfView(
          elevation: 0,
          shape: DiagonalShape(
              position: DiagonalPosition.Bottom,
              direction: DiagonalDirection.Right,
              angle: DiagonalAngle.deg(angle: 6)),
          child: Container(
            color: Color.fromARGB(255, 34, 34, 36),
            padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logos/my_logo_white.png",
                      height: 40,
                    ),
                    Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 30),
                AboutInfoMobile(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SimpleButton(
                      text: "My Projects",
                      ftSize: 13.0,
                    ),
                    SimpleButton(text: "Blog Posts", ftSize: 13.0)
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ));
  }
}
