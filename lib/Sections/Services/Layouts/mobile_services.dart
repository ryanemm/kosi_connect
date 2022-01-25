import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:kosi_connect/Sections/Services/service_card_mobile.dart';

class MobileServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Our Services",
            style: GoogleFonts.novaRound(
              fontSize: 26,
              color: Color(0xFF003049),
            ),
          ),
          Container(
            height: 3,
            width: 150,
            color: Colors.amberAccent,
          ),
          SizedBox(height: 10),
          ServiceCardMobile(index: 0),
          ServiceCardMobile(index: 1),
          ServiceCardMobile(index: 2),
        ],
      ),
    );
  }
}
