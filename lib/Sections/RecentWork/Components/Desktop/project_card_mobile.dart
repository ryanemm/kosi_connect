import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ProjectCardMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 280,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Safer SA",
                  style: GoogleFonts.novaRound(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 50),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 50),
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
                        "Google Maps API",
                        style: GoogleFonts.nunito(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text(
                        "MySQL",
                        style: GoogleFonts.nunito(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[400],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )),
                      child: Text(
                        "Database",
                        style: GoogleFonts.nunito(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.blue.shade100.withOpacity(0.2),
                  ),
                  child: Text(
                    "A map of South Africa with user generated data to give safety tips and ratings for particular areas, routes and places.",
                    style: GoogleFonts.nunito(color: Color(0xFF003049), fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.only(top: 6, bottom: 6, left: 20, right: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFFFBF00), Colors.orange]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: (TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.remove_red_eye,
                          color: Color(0xFF003049),
                        ),
                        Text(
                          "VIEW PROJECT",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600, color: Color(0xFF003049)),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  )),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/images/phone.png",
            height: 500,
          ),
        ],
      ),
    );
  }
}
