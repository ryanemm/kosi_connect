import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:kosi_connect/Sections/Services/service_card_mobile.dart';

class MobileServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // height: 350,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset("assets/images/mpumalanga_mobile.jpg"),
              Center(
                  child: Text(
                "How can we help you?",
                style: GoogleFonts.novaRound(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ))
            ],
          ),
        ),
        Container(
          color: Colors.grey[50],
          padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Our Services",
                style: GoogleFonts.novaRound(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003049),
                ),
              ),
              SizedBox(height: 0),
              ServiceCardMobile(index: 0),
              ServiceCardMobile(index: 1),
              ServiceCardMobile(index: 2),
            ],
          ),
        ),
      ],
    );
  }
}
