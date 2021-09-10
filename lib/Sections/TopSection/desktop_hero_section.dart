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
      color: Colors.white,
      child: ShapeOfView(
        elevation: 6,
        height: screenSize.height * 0.8,
        shape: DiagonalShape(
            position: DiagonalPosition.Bottom,
            angle: DiagonalAngle.deg(angle: 4),
            direction: DiagonalDirection.Right),
        child: Container(
            padding: EdgeInsets.only(top: 40, left: 40, right: 60, bottom: 140),
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Services",
                            style: GoogleFonts.nunito(
                                color: Colors.grey[900], fontSize: 18),
                          ),
                          SizedBox(width: 50),
                          OutlineGradientButton(
                            child: Text(
                              "Contact",
                              style: GoogleFonts.nunito(
                                  color: Colors.grey.shade800, fontSize: 18),
                            ),
                            gradient: LinearGradient(colors: [
                              Colors.grey.shade800,
                              Colors.grey.shade800
                            ]),
                            strokeWidth: 2,
                            padding: EdgeInsets.all(10),
                            inkWell: true,
                            onTap: () {},
                            radius: Radius.circular(10),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
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
                                    color: Colors.blueGrey[800],
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
                            SizedBox(
                              height: 0,
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
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
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
                  /*Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.white,
                    size: 50,
                  )*/
                ])),
      ),
    );
  }
}
