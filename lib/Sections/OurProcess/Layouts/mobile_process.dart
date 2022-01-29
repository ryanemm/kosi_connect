import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/accent_bar_mobile.dart';

class MobileProcess extends StatelessWidget {
  const MobileProcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 50, top: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Our Process",
            style: GoogleFonts.novaRound(
              fontSize: 26,
              color: Color(0xFF003049),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          AccentBarMobile(),
          SizedBox(height: 15),
          Text(
            "At Kosi Connect we understand that creating software solutions that are tailored to your needs is more than just about coding. With your help we will analyse your business problem and take you through a process that ensures your software is a perfect fit and can be easily integrated into your business",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              fontSize: 18,
              color: Colors.grey[800],
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 15),
          AccentBarMobile(),
          SizedBox(height: 40),
          Center(
            child: Text("Project planning & analysis",
                style:
                    GoogleFonts.nunito(fontSize: 12, color: Color(0xFF003049))),
          ),
          Center(
            child: Container(
              height: 20,
              width: 2,
              color: Colors.grey[800],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Integration &\n training",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      fontSize: 12, color: Color(0xFF003049))),
              Container(
                height: 2,
                width: 20,
                color: Colors.grey[800],
              ),
              Center(
                child: Image.asset(
                  "assets/images/process_infographic_mobile.jpg",
                  height: 100,
                ),
              ),
              Container(
                height: 2,
                width: 20,
                color: Colors.grey[800],
              ),
              Text(
                "Development",
                style:
                    GoogleFonts.nunito(fontSize: 12, color: Color(0xFF003049)),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 20,
              width: 2,
              color: Colors.grey[800],
            ),
          ),
          Center(
            child: Text("Testing",
                style:
                    GoogleFonts.nunito(fontSize: 12, color: Color(0xFF003049))),
          ),
        ],
      ),
    );
  }
}
