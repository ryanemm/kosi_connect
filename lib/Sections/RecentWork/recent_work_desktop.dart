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
        elevation: 6,
        shape: ArcShape(
            position: ArcPosition.Bottom,
            direction: ArcDirection.Outside,
            height: 80),
        child: Container(
          padding: EdgeInsets.only(bottom: 90, left: 130, right: 100, top: 30),
          width: _screenSize.width,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: AnimatedTextKit(
                  totalRepeatCount: 10,
                  animatedTexts: [
                    TypewriterAnimatedText("<recent work>",
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.novaRound(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF003049)))
                  ],
                ),
              ),
              SizedBox(height: 50),
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
