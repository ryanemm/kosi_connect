import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:shape_of_view/shape_of_view.dart";
import 'package:kosi_connect/Components/flat_button.dart';


class MobileHeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 20),
        color: Colors.white,
        child: ShapeOfView(
          elevation: 6,
          height: _screenSize.height * 0.6,
          shape: ArcShape(
            position: ArcPosition.Bottom,
            height: 40,
            direction: ArcDirection.Outside,
          ),
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 120),
            alignment: Alignment.center,
            width: double.infinity,
            //height: screenSize.height,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Icon(Icons.menu_rounded, color: Color(0xFF003049), size: 20)],
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("CUSTOM", style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white)),
                      SizedBox(height: 10),
                      Text("SOFTWARE", style: GoogleFonts.novaRound(
                          fontSize: 36,
                          color: Color(0xFF003049),
                          fontWeight: FontWeight.w600),),
                      SizedBox(height: 0),
                      Text("DEVELOPMENT", style: GoogleFonts.novaRound(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      Text("SOLUTIONS FOR ALL YOUR", style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                      SizedBox(height: 5),
                      Text("BUSINESS NEEDS",  style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                    ],)
                ),


              ],
            ),
          ),
        )
      );
  }
}
