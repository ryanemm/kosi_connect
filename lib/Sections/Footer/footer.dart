import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    Widget child;

    if (_isLandscape) {
      child = Container(
        padding: EdgeInsets.symmetric(horizontal: 300, vertical: 10),
        // height: 150,
        width: double.infinity,
        //margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "© 2022 KOSI CONNECT.",
              style: GoogleFonts.novaRound(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[300],
                  fontSize: 16),
            ),
            Image.asset("assets/images/company_logo.png", height: 80),
            Text(
              "ALL RIGHTS RESERVED",
              style: GoogleFonts.novaRound(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[300],
                  fontSize: 16),
            ),
          ],
        ),
      );
    } else {
      child = Container(
        height: 60,
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
        width: double.infinity,
        color: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "© 2022 KOSI CONNECT - ALL RIGHTS RESERVED",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[300],
                  fontSize: 10),
            ),
            /*SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[300],
                    fontSize: 10),
                children: [
                  TextSpan(text: "POWERED BY"),
                  TextSpan(
                    text: " ANAKIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[200]),
                  )
                ],
              ),
            ),*/
          ],
        ),
      );
    }
    return child;
  }
}
