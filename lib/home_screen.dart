import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/nav_bar.dart';
import 'package:kosi_connect/Components/social_bar.dart';
import 'package:kosi_connect/Sections/AboutSection/about_section.dart';
import 'package:kosi_connect/Sections/Contact/contact_section.dart';
import 'package:kosi_connect/Sections/Footer/footer.dart';
import 'package:kosi_connect/Sections/OurProcess/our_process.dart';
import 'package:kosi_connect/Sections/Services/service_section.dart';
import 'package:kosi_connect/Sections/RecentWork/recent_work.dart';
import 'package:kosi_connect/utils/responsiveLayout.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'Sections/Testimonials/testimonials.dart';
import 'Sections/TopSection/top_section.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return ResponsiveLayout(
        largeScreen: LargeScreen(),
        mediumScreen: MediumScreen(),
        smallScreen: SmallScreen(
          controller: ScrollController(),
        ));
  }
}

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key, required this.controller}) : super(key: key);
  static final ItemScrollController itemScrollController =
      ItemScrollController();
  static final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    List<Widget> sectionsDesktop = [
      TopSection(),
      AboutSection(),
      ServiceSection(),
      OurProcess(),
      RecentWork(),
      Testimonials(),
      ContactSection(),
      Footer(),
    ];

    return Scaffold(
      // appBar: mobileBar(context),
      drawer: Container(
        width: 200,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Image.asset("assets/images/company_logo.png")),
              ListTile(
                title: Text(
                  "About Us",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  itemScrollController.scrollTo(
                      index: 1, duration: Duration(seconds: 2));
                },
              ),
              ListTile(
                title: Text(
                  "Our Services",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  itemScrollController.scrollTo(
                      index: 2, duration: Duration(seconds: 1));
                },
              ),
              ListTile(
                title: Text(
                  "Our Process",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  itemScrollController.scrollTo(
                      index: 3, duration: Duration(seconds: 1));
                },
              ),
              ListTile(
                title: Text(
                  "Recent Work",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  itemScrollController.scrollTo(
                      index: 4, duration: Duration(seconds: 1));
                },
              ),
              ListTile(
                title: Text(
                  "Testimonials",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  itemScrollController.scrollTo(
                      index: 5, duration: Duration(seconds: 1));
                },
              ),
              ListTile(
                title: Text(
                  "Contact Us",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  itemScrollController.scrollTo(
                      index: 6, duration: Duration(seconds: 1));
                },
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Container(
          child: Stack(children: [
        ScrollablePositionedList.builder(
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return sectionsDesktop.elementAt(index);
          },
        ),
        mobileBar(context)
      ])),
    );
  }

  void scrollToPosition(double position) {
    final double section = position;

    controller.jumpTo(section);
  }
}

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      ])),
    );
  }
}

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> sectionsDesktop = [
      TopSection(),
      AboutSection(),
      ServiceSection(),
      OurProcess(),
      RecentWork(),
      Testimonials(),
      ContactSection(),
      Footer(),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
          child: Stack(children: [
        Scrollbar(
          isAlwaysShown: true,
          showTrackOnHover: true,
          child: ListView.builder(
            itemCount: 8,
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
        DesktopBar()
      ])),
    );
  }
}
