import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:kosi_connect/Components/accent_bar.dart";
import 'package:kosi_connect/Components/accent_bar_mobile.dart';

class TestimonialMobile extends StatelessWidget {
  const TestimonialMobile(
      {Key? key,
      required this.testimonial,
      required this.name,
      required this.company})
      : super(key: key);

  final String testimonial;
  final String name;
  final String company;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AccentBarMobile(),
          SizedBox(height: 10),
          Container(
            width: 200,
            child: Text(
              testimonial,
              textAlign: TextAlign.center,
              softWrap: true,
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: Colors.grey[800],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10),
          AccentBarMobile(),
          SizedBox(height: 15),
          Text(
            name,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
                fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            company,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
                fontSize: 16),
          ),
        ],
      ),
    );
  }
}
