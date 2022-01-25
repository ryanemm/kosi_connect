import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/OurProcess/Layouts/desktop_process.dart';
import 'package:kosi_connect/Sections/OurProcess/Layouts/mobile_process.dart';
import 'package:kosi_connect/Sections/OurProcess/Layouts/tablet_process.dart';
import 'package:kosi_connect/utils/responsiveLayout.dart';
import 'package:shape_of_view/shape_of_view.dart';

class OurProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return ResponsiveLayout(
        largeScreen: DesktopProcess(),
        mediumScreen: TabletProcess(),
        smallScreen: MobileProcess());
  }
}
