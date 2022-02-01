import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/Contact/contact_page_mobile.dart';
import 'package:kosi_connect/home_screen.dart';
import "package:outline_gradient_button/outline_gradient_button.dart";
import "package:kosi_connect/models/services.dart";
import 'package:kosi_connect/Components/accent_bar_mobile.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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
  ItemScrollController scrollController = SmallScreen.itemScrollController;
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 10, left: 0, right: 0),
      margin: EdgeInsets.symmetric(vertical: 20),
      // height: 400,
      // width: 300,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            services[widget.index].image,
            height: 60,
          ),
          SizedBox(height: 6),
          AccentBarMobile(),
          SizedBox(height: 4),
          Text(
            services[widget.index].title,
            textAlign: TextAlign.center,
            style: GoogleFonts.novaRound(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF003049)),
          ),
          SizedBox(height: 8),
          Text(
            services[widget.index].info,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 18,
                color: Colors.grey[800],
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 18),
          GestureDetector(
            onTap: () {
              scrollController.scrollTo(
                  index: 6,
                  duration: Duration(seconds: 2),
                  curve: Curves.easeInOutCubic);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  /*boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 2),
                        color: Colors.grey.shade600,
                        blurRadius: 5,
                        spreadRadius: 0)
                  ],*/
                  gradient: LinearGradient(
                      colors: [Color(0xFFFFBF00), Colors.orange]),
                  //color: Color(0xFFFFBF00),
                ),
                child: Text(
                  "Enquire",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF003049),
                      fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}
