import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card_2.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card_mobile.dart';
import "package:shape_of_view/shape_of_view.dart";
import "package:assorted_layout_widgets/assorted_layout_widgets.dart";

class RecentWorkDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 60),
      color: Colors.white,
      child: ShapeOfView(
        elevation: 10,
        shape: DiagonalShape(
            position: DiagonalPosition.Bottom,
            direction: DiagonalDirection.Right,
            angle: DiagonalAngle.deg(angle: 4)),
        child: Container(
          padding: EdgeInsets.only(bottom: 90, left: 130, right: 100, top: 60),
          width: _screenSize.width,
          decoration: BoxDecoration(
            color: Colors.grey[50],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AnimatedTextKit(
                    totalRepeatCount: 10,
                    animatedTexts: [
                      TypewriterAnimatedText("<recent work>",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800]))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              ProjectCard2(),
              SizedBox(height: 50),
              ProjectCardMobile(),
            ],
          ),
        ),
        /*child: Column(
            children: [
              Project(),
            ],
          ),*/
      ),
    );
  }
}
