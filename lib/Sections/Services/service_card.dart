import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/shimmer_button.dart';
import 'package:kosi_connect/Sections/Services/Layouts/desktop_services.dart';
import 'package:kosi_connect/home_screen.dart';
import "package:outline_gradient_button/outline_gradient_button.dart";
import "package:kosi_connect/models/services.dart";
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    ItemScrollController itemScrollController =
        LargeScreen.itemScrollControllerDesktop;
    return Container(
      height: 340,
      width: 350,
      child: Stack(children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            padding: EdgeInsets.all(15),
            height: 340,
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  services[widget.index].image,
                  height: 60,
                ),
                SizedBox(height: 10),
                Text(
                  services[widget.index].title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.novaRound(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF003049)),
                ),
                SizedBox(height: 10),
                Text(
                  services[widget.index].info,
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.nunito(fontSize: 20, color: Colors.grey[800]),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    itemScrollController.scrollTo(
                        index: 6, duration: Duration(seconds: 1));
                  },
                  child: ShimmerButton(
                    buttonText: "Enquire",
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
