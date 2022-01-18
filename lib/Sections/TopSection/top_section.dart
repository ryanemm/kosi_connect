import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/TopSection/Layouts/desktop_hero_section.dart';
import 'package:kosi_connect/Sections/TopSection/Layouts/mobile_hero_section.dart';
import 'package:kosi_connect/utils/responsiveLayout.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print(screenSize.width);

    return ResponsiveLayout(
      largeScreen: DesktopHeroSection(),
      mediumScreen: MobileHeroSection(),
      smallScreen: MobileHeroSection(),
    );
  }
}
