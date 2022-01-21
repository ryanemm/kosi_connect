import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/Contact/contact_page_mobile.dart';
import "package:outline_gradient_button/outline_gradient_button.dart";
import "package:kosi_connect/models/services.dart";

class ServiceCardMobile extends StatefulWidget {
  const ServiceCardMobile({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardMobileState createState() => _ServiceCardMobileState();
}

class _ServiceCardMobileState extends State<ServiceCardMobile> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      //padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 300,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            services[widget.index].image,
            height: 60,
          ),
          SizedBox(height: 4),
          Text(
            services[widget.index].title,
            textAlign: TextAlign.center,
            style: GoogleFonts.novaRound(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Color(0xFF003049)),
          ),
          SizedBox(height: 8),
          Text(
            services[widget.index].info,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(fontSize: 16, color: Colors.grey[800]),
          ),
          SizedBox(height: 18),
          Container(
              padding: EdgeInsets.only(bottom: 3, top: 3, left: 40, right: 40),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(4, 7),
                      color: Colors.grey.shade400,
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    colors: [Color(0xFF003049), Color(0xFFFFBF00)]),
                //color: Color(0xFFFFBF00),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactPageMobile()));
                },
                child: Text(
                  "ENQUIRE",
                  style: GoogleFonts.nunito(
                      //fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 14),
                ),
              )),
        ],
      ),
    );
  }
}
