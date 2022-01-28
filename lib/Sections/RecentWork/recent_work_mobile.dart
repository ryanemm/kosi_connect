import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Mobile/project_card_mobile.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Mobile/project_card_website.dart';
import "package:shape_of_view/shape_of_view.dart";

class RecentWorkMobile extends StatefulWidget {
  @override
  _RecentWorkMobileState createState() => _RecentWorkMobileState();
}

class _RecentWorkMobileState extends State<RecentWorkMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Recent Projects",
            style: GoogleFonts.novaRound(
                fontSize: 26,
                color: Color(0xFF003049),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 30),
          ProjectCardWebsite(),
        ],
      ),
    );
  }
}
