import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:kosi_connect/Components/accent_bar.dart";

class AboutInfoSign extends StatelessWidget {
  const AboutInfoSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width,
      decoration: BoxDecoration(color: Colors.blue),
      padding: EdgeInsets.only(bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AccentBar(),
          SizedBox(height: 10),
          Text(
            "Hi, I'm Ryan.",
            style: GoogleFonts.novaRound(
                fontWeight: FontWeight.w400, color: Colors.white, fontSize: 55),
          ),
          SizedBox(height: 10),
          Text(
            "A web and mobile developer \n from Johannesburg, South Africa. \n I create bespoke websites and mobile apps to help \n bring your business to life.",
            textAlign: TextAlign.center,
            softWrap: true,
            style: GoogleFonts.nunito(
              fontSize: 25,
              color: Colors.white70,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 5),
          Image.asset("assets/images/sign.png", height: 80),
          SizedBox(height: 10),
          AccentBar()
        ],
      ),
    );
  }
}
