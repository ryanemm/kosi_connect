import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:assorted_layout_widgets/assorted_layout_widgets.dart";
import 'package:kosi_connect/Sections/Contact/contact_form.dart';
import "package:kosi_connect/Sections/Contact/stepper_demo.dart";

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Box(
      show: true,
      color: Colors.white,
      width: _screenSize.width,
      padding: EdgeInsets.all(60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AnimatedTextKit(
                totalRepeatCount: 10,
                animatedTexts: [
                  TypewriterAnimatedText("<get in touch...>",
                      speed: Duration(milliseconds: 100),
                      textStyle: GoogleFonts.raleway(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[800]))
                ],
              ),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/mail.png",
                height: 250,
              ),
            ],
          ),
          Container(child: ContactForm())
          /*Container(
              child: Form(
                  child: Column(
            children: [
              SizedBox(
                height: 40,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 3),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "email address",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 3),
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 3),
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Additional information about your project",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 3),
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              ),
            ],
          )))*/
        ],
      ),
    );
  }
}
