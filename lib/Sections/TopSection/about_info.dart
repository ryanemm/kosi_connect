import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/accent_bar_mobile.dart';

class AboutInfoMobile extends StatelessWidget {
  const AboutInfoMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width,
      decoration: BoxDecoration(color: Color.fromARGB(255, 34, 34, 36)),
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AccentBarMobile(),
          SizedBox(height: 15),
          Text(
            "Hi, I'm Ryan.",
            style: GoogleFonts.novaRound(
                fontWeight: FontWeight.w400, color: Colors.white, fontSize: 22),
          ),
          SizedBox(height: 10),
          Text(
            "A web and mobile developer \n from Johannesburg, South Africa. \n I create bespoke websites and mobile apps to help \n bring your business to life.",
            textAlign: TextAlign.center,
            softWrap: true,
            style: GoogleFonts.nunito(
              fontSize: 18,
              color: Colors.white70,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 5),
          Image.asset("assets/images/sign.png", height: 40),
          SizedBox(height: 10),
          AccentBarMobile()
        ],
      ),
    );
  }
}
