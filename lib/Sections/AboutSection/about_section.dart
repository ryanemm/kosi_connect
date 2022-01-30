import "package:flutter/material.dart";
import 'package:kosi_connect/Components/accent_bar_mobile.dart';
import "package:assorted_layout_widgets/assorted_layout_widgets.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/AboutSection/Layouts/desktop_about.dart';
import 'package:kosi_connect/Sections/AboutSection/Layouts/mobile_about.dart';
import 'package:kosi_connect/utils/responsiveLayout.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return ResponsiveLayout(
        largeScreen: DesktopAbout(),
        mediumScreen: MobileAbout(),
        smallScreen: MobileAbout());
  }
}
