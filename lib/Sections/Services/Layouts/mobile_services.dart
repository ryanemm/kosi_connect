import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:kosi_connect/Sections/Services/service_card_mobile.dart';

class MobileServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // height: 350,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset("assets/images/nelspruit1_mobile_blur.jpeg"),
              Center(
                  child: Column(
                children: [
                  Text(
                    "HOW CAN WE HELP YOU?",
                    style: GoogleFonts.novaRound(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText("A WEB SITE?",
                          cursor: "|",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                      TypewriterAnimatedText("A MOBILE APP?",
                          cursor: "|",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                      TypewriterAnimatedText("A CUSTOM SOLUTION?",
                          cursor: "|",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white))
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Our Services",
                style: GoogleFonts.novaRound(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003049),
                ),
              ),
              SizedBox(height: 0),
              ServiceCardMobile(index: 0),
              ServiceCardMobile(index: 1),
              ServiceCardMobile(index: 2),
            ],
          ),
        ),
      ],
    );
  }
}
