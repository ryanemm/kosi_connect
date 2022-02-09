import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card_mac.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card_2.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card_mobile.dart';
import "package:shape_of_view/shape_of_view.dart";

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
          padding: EdgeInsets.only(bottom: 140, left: 130, right: 100, top: 30),
          width: _screenSize.width,
          decoration: BoxDecoration(
            color: Colors.grey[100],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Recent Work",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.novaRound(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF003049),
                  ),
                ),
              ),
              SizedBox(height: 100),
              ProjectCard2(),
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
