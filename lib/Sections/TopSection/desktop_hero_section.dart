import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:shape_of_view/shape_of_view.dart';

class DesktopHeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      color: Colors.grey[200],
      child: ShapeOfView(
        elevation: 6,
        height: screenSize.height * 0.75,
        shape: ArcShape(
            position: ArcPosition.Bottom,
            height: 80,
            direction: ArcDirection.Outside),
        child: Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 60, bottom: 50),
            alignment: Alignment.center,
            width: screenSize.width,
            height: screenSize.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFBF00), Colors.grey.shade800],
                stops: [0.05, 0.999],
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("CUSTOM",
                      style: GoogleFonts.nunito(
                          fontSize: 22, color: Colors.white)),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.novaRound(
                          fontSize: 70,
                          color: Color(0xFF003049),
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(text: "SOFTWARE "),
                        TextSpan(
                            text: "DEVELOPMENT",
                            style: GoogleFonts.novaRound(
                                fontSize: 70,
                                color: Colors.white,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        style: GoogleFonts.nunito(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(text: "SOLUTIONS FOR"),
                          TextSpan(
                              text: " ALL",
                              style: GoogleFonts.nunito(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300)),
                          TextSpan(text: " YOUR BUSINESS NEEDS")
                        ]),
                  ),
                  SizedBox(height: 40),
                  OutlineGradientButton(
                    child: Text(
                      "OUR PROJECTS",
                      style:
                          GoogleFonts.nunito(color: Colors.white, fontSize: 18),
                    ),
                    gradient:
                        LinearGradient(colors: [Colors.white, Colors.white]),
                    strokeWidth: 2,
                    padding: EdgeInsets.all(18),
                    inkWell: true,
                    onTap: () {},
                    radius: Radius.circular(10),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
