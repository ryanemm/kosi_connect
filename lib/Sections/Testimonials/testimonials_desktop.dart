import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/Testimonials/testimonial.dart';
import 'package:shape_of_view/shape_of_view.dart';

class TestimonialsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      color: Colors.grey[100],
      child: ShapeOfView(
        elevation: 6,
        shape: ArcShape(
            position: ArcPosition.Bottom,
            height: 80,
            direction: ArcDirection.Outside),
        child: Container(
          padding: EdgeInsets.only(left: 130, top: 20, bottom: 80, right: 130),
          color: Colors.white,
          child: Column(
            children: [
              Center(
                  child: Text("Client Testimonials",
                      style: GoogleFonts.novaRound(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF003049),
                      ))),
              SizedBox(height: 50),
              Center(
                child: Testimonial(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
