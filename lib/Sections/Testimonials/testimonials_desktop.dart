import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/Testimonials/testimonial.dart';

class TestimonialsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 130, top: 20, bottom: 80, right: 130),
      child: Column(
        children: [
          Center(
            child: AnimatedTextKit(
              totalRepeatCount: 10,
              animatedTexts: [
                TypewriterAnimatedText(
                  "<CLIENT TESTIMONIALS>",
                  speed: Duration(milliseconds: 100),
                  textStyle: GoogleFonts.novaRound(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF003049)),
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Testimonial(),
          ),
        ],
      ),
    );
  }
}
