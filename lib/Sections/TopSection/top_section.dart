import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/TopSection/desktop_hero_section.dart';
import 'package:kosi_connect/Sections/TopSection/mobile_hero_section.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    Widget hero;

    if (isLandscape) {
      hero = DesktopHeroSection();
    } else {
      hero = MobileHeroSection();
    }

    return Container(child: hero);
  }
}
