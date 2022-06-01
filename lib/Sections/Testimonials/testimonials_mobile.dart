import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/Testimonials/testimonial.dart';
import 'package:kosi_connect/Sections/Testimonials/testimonial_mobile.dart';
import "package:shape_of_view/shape_of_view.dart";
import 'package:yaru_widgets/yaru_widgets.dart';

class TestimonialsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 30, top: 60, right: 30),
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
          YaruCarousel(
            height: 400,
            autoScroll: true,
            placeIndicator: true,
            autoScrollDuration: Duration(milliseconds: 3000),
            children: [
              TestimonialMobile(
                name: "Melissa Whyppe,",
                company: "Ellie Whyppe Writes",
                testimonial:
                    "The team are excellent  web designers and sharp developers. They were extremely pleasant to work with and involved me in the development process. Always willing to go the extra mile to meet your exact requirements.",
              ),
              TestimonialMobile(
                name: "Enycourse Ziira,",
                company: "Pro8 Innovetics",
                testimonial:
                    "We wanted a home on the web for our budding company and the guys at Kosi Connect delivered. It was smooth process and it has greatly improved our marketing reach and professionalism.",
              )
            ],
          )
        ],
      ),
    );
  }
}
