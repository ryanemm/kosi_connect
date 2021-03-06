import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:kosi_connect/Components/accent_bar.dart";

class Testimonial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AccentBar(),
          SizedBox(height: 20),
          Text(
            "\"The team are excellent \n web designers and sharp developers. \nThey were extremely pleasant to work with and involved me \nin the development process. Always willing\n to go the extra mile to meet your\n exact requirements\"",
            textAlign: TextAlign.center,
            softWrap: true,
            style: GoogleFonts.nunito(
              fontSize: 30,
              color: Colors.grey[800],
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20),
          AccentBar(),
          SizedBox(height: 15),
          Text(
            "- Melissa Whyppe \n Ellie Whyppe Writes",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
                fontSize: 22),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
