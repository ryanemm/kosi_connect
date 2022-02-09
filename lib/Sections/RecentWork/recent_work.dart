import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card_2.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Desktop/project_card_mobile.dart';
import 'package:kosi_connect/Sections/RecentWork/recent_work_desktop.dart';
import 'package:kosi_connect/Sections/RecentWork/recent_work_mobile.dart';
import "package:shape_of_view/shape_of_view.dart";

class RecentWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    Widget child;
    if (isLandscape) {
      child = RecentWorkDesktop();
    } else {
      child = RecentWorkMobile();
    }

    return child;
  }
}
