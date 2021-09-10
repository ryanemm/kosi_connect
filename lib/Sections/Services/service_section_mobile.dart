import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:kosi_connect/Sections/Services/service_card.dart';
import "package:shape_of_view/shape_of_view.dart";

class ServiceSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 40),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedTextKit(
            totalRepeatCount: 10,
            animatedTexts: [
              TypewriterAnimatedText("<my services>",
                  speed: Duration(milliseconds: 100),
                  textStyle: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 50)))
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Image.asset(
              "assets/images/web_dev_graphic.png",
              height: 160,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
                "I\'m a software developer specialising building (and designing) beautiful experiences for web and mobile apps.",
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[800]),
                textAlign: TextAlign.center,
                softWrap: true),
          ),
        ],
      ),
    );
  }
}
