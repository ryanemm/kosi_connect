import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/flat_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:shape_of_view/shape_of_view.dart';

class DesktopHeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      color: Colors.white,
      child: ShapeOfView(
        elevation: 6,
        height: screenSize.height * 0.9,
        shape: ArcShape(
            position: ArcPosition.Bottom,
            height: 80,
            direction: ArcDirection.Outside),
        child: Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 60, bottom: 50),
            alignment: Alignment.center,
            width: screenSize.width,
            height: screenSize.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/header_desktop1.jpeg"),
                    fit: BoxFit.cover)),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("CUSTOM",
                      style: GoogleFonts.nunito(
                          fontSize: 32, color: Colors.white)),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.novaRound(
                          fontSize: 70,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(text: "SOFTWARE "),
                        TextSpan(
                            text: "DEVELOPMENT",
                            style: GoogleFonts.novaRound(
                                fontSize: 70,
                                color: Color(0xFF003049),
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                  // SizedBox(height: 40),
                  RichText(
                    text: TextSpan(
                        style: GoogleFonts.nunito(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(text: "SOLUTIONS TO"),
                        ]),
                  ),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText("FUTURE PROOF YOUR BUSINESS",
                          cursor: "|",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                      TypewriterAnimatedText("SIMPLIFY YOUR WORKFLOW",
                          cursor: "|",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                      TypewriterAnimatedText("REACH NEW CLIENTELE",
                          cursor: "|",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(height: 40),
                  SimpleButton(
                    text: "ABOUT US",
                  )
                ],
              ),
            )),
      ),
    );
  }
}
