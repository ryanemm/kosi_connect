import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ProjectCardMac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      height: 400,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Image.asset(
              "assets/images/student_management_system.png",
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
                      "Administration tool that simplifies and automates daily school tasks. Includes attendance system, academic records, class scheduling and report writing.",
                      style: GoogleFonts.nunito(
                          color: Color(0xFF003049), fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(4, 7),
                            color: Colors.grey.shade400,
                            blurRadius: 5,
                            spreadRadius: 2)
                      ],
                      gradient:
                          LinearGradient(colors: [Colors.purple, Colors.blue]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: (TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "VIEW PROJECT",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 16),
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
