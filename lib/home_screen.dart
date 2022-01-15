import "package:flutter/material.dart";
import 'package:kosi_connect/Components/nav_bar.dart';
import 'package:kosi_connect/Components/social_bar.dart';
import 'package:kosi_connect/Sections/AboutSection/about_section.dart';
import 'package:kosi_connect/Sections/Contact/contact_section.dart';
import 'package:kosi_connect/Sections/Footer/footer.dart';
import 'package:kosi_connect/Sections/OurProcess/our_process.dart';
import 'package:kosi_connect/Sections/Services/service_section.dart';
import 'package:kosi_connect/Sections/RecentWork/recent_work.dart';

import 'Sections/Testimonials/testimonials.dart';
import 'Sections/TopSection/top_section.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> sectionsDesktop = [
    TopSection(),
    //AboutSection(),
    ServiceSection(),
    OurProcess(),
    RecentWork(),
    Testimonials(),
    //ContactSection(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
          child: Stack(children: [
        Scrollbar(
          isAlwaysShown: true,
          showTrackOnHover: true,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return sectionsDesktop.elementAt(index);
            },
          ),
        ),
        Positioned(
          bottom: 0,
          left: 30,
          child: SocialBar(),
        ),
        NavBar()
      ])),
    );
  }
}
