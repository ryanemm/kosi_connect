import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:kosi_connect/Sections/Services/service_card.dart';
import 'package:kosi_connect/home_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import "package:shape_of_view/shape_of_view.dart";

class DesktopServices extends StatelessWidget {
  static ItemScrollController itemScrollController =
      LargeScreen.itemScrollControllerDesktop;
  @override
  Widget build(BuildContext context) {
    ItemScrollController itemScrollController =
        LargeScreen.itemScrollControllerDesktop;
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 30),
      child: ShapeOfView(
        elevation: 6,
        shape: ArcShape(
            position: ArcPosition.Bottom,
            height: 80,
            direction: ArcDirection.Outside),
        child: Container(
          padding: EdgeInsets.only(top: 25, bottom: 140, left: 20, right: 20),
          width: _screenSize.width,
          decoration: BoxDecoration(
            color: Colors.grey[100],
          ),
          child: Column(
            children: [
              Text(
                "Our Services",
                textAlign: TextAlign.center,
                style: GoogleFonts.novaRound(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003049),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Image.asset(
                  "assets/images/web_dev_graphic.png",
                  height: 200,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ServiceCard(index: 0),
                  ServiceCard(index: 1),
                  ServiceCard(index: 2)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
