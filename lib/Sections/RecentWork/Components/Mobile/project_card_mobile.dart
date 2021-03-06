import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ProjectCardMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Safer SA",
          style: GoogleFonts.novaRound(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 0, 0, 50),
          ),
        ),
           SizedBox(height: 10),
        Center(
          child: Image.asset(
            "assets/images/phone.png",
            height: 250,
          ),
        ),
        SizedBox(height: 10),
        Wrap(
          runSpacing: 6,
          direction: Axis.horizontal,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 50),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  )),
              child: Text(
                "Flutter",
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 10),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  )),
              child: Text(
                "Dart",
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 10),
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 50),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  )),
              child: Text(
                "PHP",
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 10),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  )),
              child: Text(
                "SS Scripting",
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 10),
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 50),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  )),
              child: Text(
                "Google Maps API",
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 10),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "MySQL",
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 10),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  )),
              child: Text(
                "Database",
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 10),
              ),
            ),
          ],
        ),
     
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.blue.shade100.withOpacity(0.2),
          ),
          child: Text(
            "A map of South Africa with user generated data to give safety tips and ratings for particular areas, routes and places.",
            style: GoogleFonts.nunito(color: Colors.blue, fontSize: 12),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(3),
          width: 105,
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
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
                SizedBox(width: 2),
                Text(
                  "VIEW PROJECT",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 10),
                ),
              ],
            ),
            onPressed: () {},
          )),
        ),
      ],
    ));
  }
}
