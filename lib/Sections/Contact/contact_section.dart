import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:assorted_layout_widgets/assorted_layout_widgets.dart";
import 'package:kosi_connect/Sections/Contact/contact_form.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: _screenSize.width,
      child: Column(
        children: [
          Container(
              // height: 250,
              width: _screenSize.width,
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Image.asset("assets/images/nelspruit_mobile.jpg"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Address",
                        style: GoogleFonts.novaRound(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "372 Long Homes, Umjindi,",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Barberton, 1300",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Mpumalanga",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Tel: 073 016 9018",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              )),
          Container(child: ContactForm())
        ],
      ),
    );
  }
}
