import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      height: 360,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Image.asset(
              "assets/images/pro8_tech_desktop.png",
              height: 400,
            ),
          ),
          Positioned(
            left: 540,
            top: 50,
            child: Container(
              height: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pro8.tech",
                    style: GoogleFonts.novaRound(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF003049),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF003049),
                        ),
                        child: Text(
                          "Flutter",
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Text(
                          "Dart",
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 50),
                        ),
                        child: Text(
                          "PHP",
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Text(
                          "SS Scripting",
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 20, right: 20),
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                    ),
                    child: Text(
                      "The home of Pro8 Innovetics, a pioneer in agricultural technology.",
                      style: GoogleFonts.nunito(
                          color: Colors.grey[800], fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 25),
                  InkWell(
                    onTap: () => launch("https://pro8.tech"),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 6, bottom: 6, left: 20, right: 20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFFFBF00), Colors.orange]),
                      ),
                      child: (Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Color(0xFF003049),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "View Project",
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF003049)),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
