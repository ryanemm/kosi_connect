import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/accent_bar_mobile.dart';

class ProjectCardWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Pro8.tech",
              style: GoogleFonts.novaRound(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF003049),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                "assets/images/pro8_tech_mobile.png",
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10),
            AccentBarMobile(),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
              width: double.infinity,
              child: Text(
                "The home of Pro8 Innovetics, a pioneer in agricultural technology.",
                style: GoogleFonts.nunito(
                  color: Colors.grey[800],
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            AccentBarMobile(),
            SizedBox(height: 56),
            Text(
              "Ellie Whyppe Writes",
              style: GoogleFonts.novaRound(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF003049),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                "assets/images/ellie_writes_mobile.jpg",
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10),
            AccentBarMobile(),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
              width: double.infinity,
              child: Text(
                "A business portfolio for Ellie Writes' service. For all your professional writing services, copywriting, career and interview counselling.",
                style: GoogleFonts.nunito(
                  color: Colors.grey[800],
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            AccentBarMobile(),
            SizedBox(height: 10),
          ],
        ));
  }
}
