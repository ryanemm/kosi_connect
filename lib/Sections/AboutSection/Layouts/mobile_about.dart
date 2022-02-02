import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/accent_bar_mobile.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "About Us",
            textAlign: TextAlign.center,
            style: GoogleFonts.novaRound(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xFF003049),
            ),
          ),
          SizedBox(height: 20),
          AccentBarMobile(),
          SizedBox(height: 15),
          Text(
            "Kosi Connect is a business centric software development service. We offer fully fledged IT services that are built around the goal of growing your business.",
            style: GoogleFonts.nunito(
                fontSize: 18,
                color: Colors.grey[800],
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          AccentBarMobile(),
          SizedBox(height: 50),
          Text(
            "Our Mission",
            style: GoogleFonts.novaRound(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xFF003049),
            ),
          ),
          SizedBox(height: 20),
          AccentBarMobile(),
          SizedBox(height: 15),
          Text(
            "We strive to deliver services and products of the highest standard to achieve the ultimate goal of making your business better. Our solutions are built on three principles; efficiency, quality and simplicity.",
            style: GoogleFonts.nunito(
              fontSize: 18,
              color: Colors.grey[800],
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          AccentBarMobile(),
        ],
      ),
    );
  }
}
