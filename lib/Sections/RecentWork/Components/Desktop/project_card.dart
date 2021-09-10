import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatefulWidget {
  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 280,
        width: 800,
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 445,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                    BoxShadow(
                      offset: Offset(-4, -4),
                      blurRadius: 5,
                      color: Colors.black26,
                    ),
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      color: Colors.black26,
                    ),
                  ],
           
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/ellie_writes.png",
                  ),
                ),
              ),
            ),
            Positioned(
              left: 415,
              top: 35,
              child: Container(
                padding: EdgeInsets.all(25),
                height: 180,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-4, -4),
                      blurRadius: 5,
                      color: Colors.grey.shade400,
                    ),
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      color: Colors.black26,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Text(
                  "A business portfolio for Ellie Writes' service. For all your professional writing services, copywriting, career and interview counselling.",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Positioned(
                left: 475,
                child: Text(
                  "Ellie Whyppe Writes",
                  style: GoogleFonts.raleway(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[900]),
                ))
          ],
        ),
      ),
    );
  }
}
