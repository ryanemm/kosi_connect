import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/Testimonials/testimonial.dart';
import 'package:kosi_connect/Sections/Testimonials/testimonial_mobile.dart';
import "package:shape_of_view/shape_of_view.dart";

class TestimonialsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 30, top: 40, bottom: 20, right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Client Testimonials",
            textAlign: TextAlign.center,
            style: GoogleFonts.novaRound(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xFF003049),
            ),
          ),
          
          SizedBox(height: 30),
          Center(
            child: TestimonialMobile(),
          ),
        ],
      ),
    );
  }
}
