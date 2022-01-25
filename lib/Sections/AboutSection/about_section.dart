import "package:flutter/material.dart";

import "package:assorted_layout_widgets/assorted_layout_widgets.dart";
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Box(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: Column(
        children: [
          Text(
            "About Us",
            style: GoogleFonts.novaRound(
              fontSize: 26,
              color: Color(0xFF003049),
            ),
          ),
          Container(
            height: 3,
            width: 120,
            color: Colors.amberAccent,
          ),
          SizedBox(height: 30),
          Text(
            "A web and mobile developer from Johannesburg, South Africa. I create bespoke websites and mobile apps to help bring your business to life.",
            style: GoogleFonts.nunito(
                fontSize: 18,
                color: Colors.grey[800],
                fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          Text(
            "Our Mission",
            style: GoogleFonts.novaRound(
              fontSize: 24,
              color: Color(0xFF003049),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "A web and mobile developer from Johannesburg, South Africa. I create bespoke websites and mobile apps to help bring your business to life.",
            style: GoogleFonts.nunito(
              fontSize: 18,
              color: Colors.grey[800],
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
