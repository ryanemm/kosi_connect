import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:kosi_connect/Sections/Contact/Layouts/desktop_contact.dart';
import 'package:kosi_connect/Sections/Contact/Layouts/mobile_contact.dart';
import 'package:kosi_connect/utils/responsiveLayout.dart';
import "package:url_launcher/url_launcher.dart";
import 'package:kosi_connect/Sections/Contact/contact_form.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return ResponsiveLayout(
        largeScreen: DesktopContact(),
        mediumScreen: DesktopContact(),
        smallScreen: MobileContact());
  }
}
