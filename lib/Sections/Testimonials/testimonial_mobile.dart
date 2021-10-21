import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:kosi_connect/Components/accent_bar.dart";
import 'package:kosi_connect/Components/accent_bar_mobile.dart';

class TestimonialMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AccentBarMobile(),
          SizedBox(height: 10),
          Text(
            "\"Ryan is an excellent \n web designer and sharp developer. \nHe is extremely pleasant to work with and involves you \nin the development process. Always willing\n to go the extra mile to meet your\n exact requirements\"",
            textAlign: TextAlign.center,
            softWrap: true,
            style: GoogleFonts.nunito(
              fontSize: 18,
              color: Colors.grey[800],
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10),
          AccentBarMobile(),
          SizedBox(height: 15),
          Text(
            "- Melissa Whyppe \n Ellie Whyppe Writes",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
                fontSize: 16),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
