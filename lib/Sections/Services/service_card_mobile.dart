import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
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
      height: _screenSize.width * 0.8,
      width: _screenSize.width * 0.8,

      child: Stack(children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            padding: EdgeInsets.all(15),
            height: _screenSize.width * 0.8,
          width: _screenSize.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  services[widget.index].image,
                  height: 40,
                ),
                SizedBox(height: 4),
                Text(
                  services[widget.index].title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.novaRound(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF003049)),
                ),
                SizedBox(height: 8),
                Text(
                  services[widget.index].info,
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.nunito(fontSize: 12, color: Colors.grey[800]),
                ),
                SizedBox(height: 12),
                Container(
                    padding:
                        EdgeInsets.only(bottom: 3, top: 3, left: 40, right: 40),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFBF00),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "ENQUIRE",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF003049),
                            fontSize: 12),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
