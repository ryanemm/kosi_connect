import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:url_launcher/url_launcher.dart";
import 'package:kosi_connect/Sections/Contact/contact_form.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: _screenSize.width,
      child: Column(
        children: [
          Container(
              // height: 250,
              width: _screenSize.width,
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Image.asset("assets/images/nelspruit_mobile.jpg"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Address",
                        style: GoogleFonts.novaRound(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "372 Long Homes, Umjindi,",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Barberton, 1300",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Mpumalanga",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          launch("tel:+27 73 016 9018");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tel: ",
                                style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )),
                            Text("073 016 9018",
                                style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  decorationThickness: 2,
                                )),
                            Icon(
                              Icons.call,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Container(child: ContactForm())
        ],
      ),
    );
  }
}
