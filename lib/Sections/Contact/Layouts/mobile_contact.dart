import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../contact_form.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 60),
      color: Colors.white,
      width: _screenSize.width,
      child: Column(
        children: [
          Text(
            "Contact Us",
            style: GoogleFonts.novaRound(
              fontSize: 26,
              color: Color(0xFF003049),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              launch("mailto:ryan@kosiconnect.co.za? subject=Enquiry");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Email: ",
                    style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800])),
                Text("ryan@kosiconnect.co.za",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800],
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.grey[800],
                      decorationThickness: 2,
                    )),
                Icon(
                  Icons.email_rounded,
                  color: Color(0xFF003049),
                  // size: 30,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              launch("mailto:kayn@kosiconnect.co.za? subject=Enquiry");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("kayn@kosiconnect.co.za",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800],
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.grey[800],
                      decorationThickness: 2,
                    )),
                Icon(
                  Icons.email_rounded,
                  color: Color(0xFF003049),
                  // size: 30,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              launch("tel:+27 73 016 9813");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tel: ",
                    style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800])),
                SizedBox(height: 10),
                Text("073 016 9813",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800],
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.grey[800],
                      decorationThickness: 2,
                    )),
                Icon(
                  Icons.call,
                  color: Color(0xFF003049),
                  // size: 30,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              launch("tel:+27 67 989 0637");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("067 989 0637",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800],
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.grey[800],
                      decorationThickness: 2,
                    )),
                Icon(
                  Icons.call,
                  color: Color(0xFF003049),
                  // size: 30,
                ),
              ],
            ),
          ),
          Image.asset("assets/images/skyline_grey.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Text(
                "372 Long Homes, Umjindi,",
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800]),
              ),
              SizedBox(height: 10),
              Text(
                "Barberton, 1300",
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800]),
              ),
              SizedBox(height: 10),
              Text(
                "Mpumalanga",
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800]),
              ),
              SizedBox(height: 10),
            ],
          ),
          Image.asset("assets/images/skyline_2.png"),
          Container(child: ContactForm())
        ],
      ),
    );
  }
}
