import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/accent_bar_mobile.dart';
import 'package:shape_of_view/shape_of_view.dart';

class DesktopProcess extends StatelessWidget {
  const DesktopProcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.only(left: 0, right: 0, top: 30, bottom: 80),
          color: Colors.white,
          child: Column(
            children: [
              Center(
                child: Text(
                  "Our Process",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.novaRound(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF003049),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Column(
                  children: [
                    AccentBarMobile(),
                    SizedBox(height: 15),
                    Text(
                      "At Kosi Connect we understand that creating software solutions that are tailored to your needs is more than just about coding. With your help we will analyse your business problem and take you through a process that ensures your software is a perfect fit and can be easily integrated into your business",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 15),
                    AccentBarMobile(),
                  ],
                ),
              ),
              SizedBox(height: 30),
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
                        "We will analyse your\n needs to find the best fit solution.\n Once complete our developers will \n plan the project course and duration\n then present you with\n the outcome.",
                        style: GoogleFonts.nunito(
                            fontSize: 20, fontWeight: FontWeight.w500),
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
                              fontSize: 20, fontWeight: FontWeight.w500),
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
                    height: 250,
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
                            fontSize: 20, fontWeight: FontWeight.w500),
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
                            fontSize: 20, fontWeight: FontWeight.w500),
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
