import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/Contact/contact_form.dart';
import 'package:url_launcher/url_launcher.dart';

import '../contact_form _desktop.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150, vertical: 50),
      color: Colors.grey[100],
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Contact Us",
              style: GoogleFonts.novaRound(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Color(0xFF003049),
              )),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Address",
                      style: GoogleFonts.novaRound(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "372 Long Homes, Umjindi,",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Barberton, 1300",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Mpumalanga",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        launch("tel:+27 73 016 9018");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("073 016 9018",
                              style: GoogleFonts.nunito(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800],
                              )),
                          Icon(
                            Icons.call,
                            color: Colors.grey[800],
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Image.asset("assets/images/skyline_grey.png")
                  ],
                ),
              ),
              Expanded(flex: 1, child: ContactFormDesktop())
            ],
          ),
        ],
      ),
    );
  }
}
