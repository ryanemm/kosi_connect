import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ProjectCardWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 5)
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ellie Whyppe Writes",
              style: GoogleFonts.novaRound(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF003049),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                "assets/images/ellie_writes.png",
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade100.withOpacity(0.2),
              ),
              child: Text(
                "A business portfolio for Ellie Writes' service. For all your professional writing services, copywriting, career and interview counselling.",
                style: GoogleFonts.nunito(
                  color: Colors.grey[800],
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 10),
          ],
        ));
  }
}
