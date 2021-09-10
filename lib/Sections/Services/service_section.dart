import "package:flutter/material.dart";
import 'package:kosi_connect/Sections/Services/service_section_mobile.dart';
import 'package:kosi_connect/Sections/Services/service_section_desktop.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    Widget _child;

    if (isLandscape) {
      _child = ServiceSectionDesktop();
    } else {
      _child = ServiceSectionMobile();
    }

    return _child;
  }
}
