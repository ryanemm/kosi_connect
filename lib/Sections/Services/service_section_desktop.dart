import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:kosi_connect/Sections/Services/service_card.dart';
import "package:shape_of_view/shape_of_view.dart";

class ServiceSectionDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 90, left: 20, right: 20),
            width: _screenSize.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/web_dev_graphic.png",
                    height: 220,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ServiceCard(index: 0),
                    ServiceCard(index: 1),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 110,
            top: 70,
            child: AnimatedTextKit(
              totalRepeatCount: 10,
              animatedTexts: [
                TypewriterAnimatedText("<my services>",
                    speed: Duration(milliseconds: 100),
                    textStyle: GoogleFonts.nunito(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
