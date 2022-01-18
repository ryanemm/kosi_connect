import "package:flutter/material.dart";
import 'package:kosi_connect/Sections/Services/Layouts/desktop_services.dart';
import 'package:kosi_connect/Sections/Services/Layouts/mobile_services.dart';
import 'package:kosi_connect/Sections/Services/Layouts/tablet_services.dart';
import 'package:kosi_connect/Sections/Services/service_section_mobile.dart';
import 'package:kosi_connect/Sections/Services/service_section_desktop.dart';
import 'package:kosi_connect/utils/responsiveLayout.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return ResponsiveLayout(
        largeScreen: DesktopServices(),
        mediumScreen: TabletServices(),
        smallScreen: MobileServices());
  }
}
