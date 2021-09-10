import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class DesktopHeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.only(top: 40, left: 40, right: 60, bottom: 50),
        alignment: Alignment.center,
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple, Colors.blue],
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    "assets/images/logos/my_logo_white.png",
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Blog",
                        style: GoogleFonts.nunito(
                            color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(width: 50),
                      OutlineGradientButton(
                        child: Text(
                          "Contact",
                          style: GoogleFonts.nunito(
                              color: Colors.white, fontSize: 16),
                        ),
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.white]),
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
                child: Stack(
                  children: [
                    Center(
                      child: Transform.rotate(
                        angle: 45,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 200,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.grey.withOpacity(0.3)),
                              ),
                              SizedBox(height: 50),
                              Container(
                                width: 300,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.grey.withOpacity(0.3)),
                              ),
                              SizedBox(height: 50),
                              Container(
                                width: 200,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.grey.withOpacity(0.3)),
                              )
                            ]),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.nunito(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                  children: [
                                    TextSpan(text: "Web"),
                                    TextSpan(
                                        text: " &",
                                        style: GoogleFonts.nunito(
                                            fontSize: 40,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300)),
                                    TextSpan(text: " Mobile Development")
                                  ]),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              OutlineGradientButton(
                child: Text(
                  "PROJECTS",
                  style: GoogleFonts.nunito(color: Colors.white, fontSize: 18),
                ),
                gradient: LinearGradient(colors: [Colors.white, Colors.white]),
                strokeWidth: 2,
                padding: EdgeInsets.all(18),
                inkWell: true,
                onTap: () {},
                radius: Radius.circular(10),
              ),
              Icon(
                Icons.arrow_downward_rounded,
                color: Colors.white,
                size: 50,
              )
            ]));
  }
}
