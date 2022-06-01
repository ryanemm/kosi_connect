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
                    Text(
                      "Address",
                      style: GoogleFonts.novaRound(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "64 Steenkamp Street, Del Jundor,",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Witbank, 1044",
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
                    SizedBox(height: 24),
                    Text(
                      "372 Long Homes, Umjindi,",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Barberton, 1300",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Mpumalanga",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "12816/6 Motsumi Street, Umjindi,",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Dobsonville, 1300",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Soweto",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 24),
                    Image.asset("assets/images/skyline_grey.png")
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          launch(
                              "mailto:ryan@kosiconnect.co.za? subject=Enquiry");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          launch(
                              "mailto:kayn@kosiconnect.co.za? subject=Enquiry");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("tel:+27 73 016 9813");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                          SizedBox(width: 16),
                          InkWell(
                            onTap: () {
                              launch("https://wa.me/+27730169813");
                            },
                            child: Image.asset("assets/images/whatsapp.png",
                                height: 24),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
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
                          SizedBox(width: 16),
                          InkWell(
                            onTap: () {
                              launch("https://wa.me/+27679890637");
                            },
                            child: Image.asset("assets/images/whatsapp.png",
                                height: 24),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      ContactFormDesktop(),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
