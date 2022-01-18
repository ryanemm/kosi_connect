import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/square_button.dart';

class MobileHeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
      alignment: Alignment.center,
      width: double.infinity,
      height: _screenSize.height * 0.75,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFBF00), Colors.grey.shade800],
          stops: [0.05, 0.999],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Text("SOLUTIONS FOR ALL YOUR",
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white)),
              SizedBox(height: 5),
              Text("BUSINESS NEEDS",
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white)),
              SizedBox(
                height: 40,
              ),
              SquareButton()
            ],
          )),
        ],
      ),
    );
  }
}
