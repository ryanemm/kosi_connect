import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:kosi_connect/Sections/Services/service_card_mobile.dart';
import "package:shape_of_view/shape_of_view.dart";

class MobileServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      color: Colors.grey[200],
      child: ShapeOfView(
        elevation: 6,
        shape: ArcShape(
          position: ArcPosition.Bottom,
          height: 40,
          direction: ArcDirection.Outside,
        ),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*AnimatedTextKit(
            totalRepeatCount: 10,
            animatedTexts: [
              TypewriterAnimatedText("<my services>",
                  speed: Duration(milliseconds: 100),
                  textStyle: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 50)))
            ],
          ),*/
              SizedBox(height: 10),
              /*Center(
            child: Image.asset(
              "assets/images/web_dev_graphic.png",
              height: 160,
            ),
          ),*/
              //SizedBox(height: 10),
              ServiceCardMobile(index: 0),
              ServiceCardMobile(index: 1),
              ServiceCardMobile(index: 2),
            ],
          ),
        ),
      ),
    );
  }
}
