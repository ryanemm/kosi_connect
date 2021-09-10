import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/Testimonials/testimonial.dart';

class TestimonialsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 130, top: 30, bottom: 80, right: 130),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimatedTextKit(
                totalRepeatCount: 10,
                animatedTexts: [
                  TypewriterAnimatedText("<client testimonials>",
                      speed: Duration(milliseconds: 100),
                      textStyle: GoogleFonts.nunito(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[800]))
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Center(
            child: Testimonial(),
          ),
        ],
      ),
    );
  }
}
