import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/square_button.dart';

class MobileHeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Stack(alignment: AlignmentDirectional.topCenter, children: [
      Container(
          // height: _screenSize.height * 0.75,
          width: _screenSize.width,
          child: Image.asset("assets/images/header.jpg")),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Text("CUSTOM",
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white)),
              SizedBox(height: 10),
              Text(
                "SOFTWARE",
                style: GoogleFonts.novaRound(
                    fontSize: 36,
                    color: Color(0xFF003049),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 0),
              Text("DEVELOPMENT",
                  style: GoogleFonts.novaRound(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 10),
              Text("SOLUTIONS TO",
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white)),
              SizedBox(height: 5),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText("FUTURE PROOF YOUR BUSINESS",
                      cursor: "|",
                      speed: Duration(milliseconds: 150),
                      textStyle: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                  TypewriterAnimatedText("SIMPLIFY YOUR WORKFLOW",
                      cursor: "|",
                      speed: Duration(milliseconds: 150),
                      textStyle: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                  TypewriterAnimatedText("REACH NEW CLIENTELE",
                      cursor: "|",
                      speed: Duration(milliseconds: 150),
                      textStyle: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SquareButton()
            ],
          ),
        ],
      ),
    ]);
  }
}
