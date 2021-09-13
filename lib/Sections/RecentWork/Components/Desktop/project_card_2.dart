import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ProjectCard2 extends StatelessWidget {
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
              "assets/images/ellie_writes.png",
              height: 350,
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
                    "Student Management System",
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
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            )),
                        child: Text(
                          "Flutter",
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            )),
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
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            )),
                        child: Text(
                          "PHP",
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            )),
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
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.blue.shade100.withOpacity(0.2),
                    ),
                    child: Text(
                      "A business portfolio for Ellie Writes' service. For all your professional writing services, copywriting, career and interview counselling.",
                      style:
                          GoogleFonts.nunito(color: Colors.blue, fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purpleAccent]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: (TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "VIEW PROJECT",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    )),
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
