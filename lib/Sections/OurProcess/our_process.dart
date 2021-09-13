import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view/shape_of_view.dart';

class OurProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      color: Colors.grey[200],
      child: ShapeOfView(
        elevation: 6,
        shape: ArcShape(
            position: ArcPosition.Bottom,
            height: 80,
            direction: ArcDirection.Outside),
        child: Container(
          padding: EdgeInsets.only(left: 130, right: 100, top: 40, bottom: 40),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  AnimatedTextKit(
                    totalRepeatCount: 10,
                    animatedTexts: [
                      TypewriterAnimatedText("<our process>",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF003049)))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Text(
                      "1. Project planning & analysis",
                      style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF003049)),
                    ),
                    Text(
                        "We will analyse your\n needs to find the best fit solution.\n Once complete our developers will then\n plan the project course and duration\n then present you with\n the outcome.",
                        style: GoogleFonts.nunito(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center),
                    Container(
                        height: 60,
                        width: 6,
                        decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.all(Radius.circular(3))))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "4. Integration & training",
                        style: GoogleFonts.nunito(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF003049)),
                      ),
                      Text(
                          "We will then present you\n the fully functional software\n and integrate it into your business.\n If needed, we will train staff to \nuse the software.",
                          style: GoogleFonts.nunito(
                              fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center)
                    ],
                  ),
                  Container(
                      height: 6,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.all(Radius.circular(3)))),
                  Image.asset(
                    "assets/images/process_infographic.png",
                    height: 400,
                  ),
                  Container(
                      height: 6,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.all(Radius.circular(3)))),
                  Column(
                    children: [
                      Text(
                        "2. Development",
                        style: GoogleFonts.nunito(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF003049)),
                      ),
                      Text(
                        "The next stage is to develop\n your software solution. The process\n may be incremental with your input\n being required along the way,\n depending on the complexity\n of the solution. ",
                        style: GoogleFonts.nunito(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                        height: 60,
                        width: 6,
                        decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius:
                                BorderRadius.all(Radius.circular(3)))),
                    Text(
                      "3. Testing",
                      style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF003049)),
                    ),
                    Text(
                        "Once the development process\n is complete we will test the\n completed software to ensure\n that it functions as intended.",
                        style: GoogleFonts.nunito(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
