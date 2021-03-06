import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/home_screen.dart';
import 'package:kosi_connect/utils/responsiveLayout.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DesktopBar extends StatefulWidget {
  const DesktopBar({Key? key}) : super(key: key);

  @override
  _DesktopBarState createState() => _DesktopBarState();
}

class _DesktopBarState extends State<DesktopBar> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    ItemScrollController itemScrollController =
        LargeScreen.itemScrollControllerDesktop;
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(children: [
              SizedBox(width: 20),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    child: Image.asset("assets/images/company_logo_navbar.png",
                        height: 100),
                  )),
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        itemScrollController.scrollTo(
                            index: 2, duration: Duration(seconds: 1));
                      },
                      child: Text(
                        "Services",
                        style: GoogleFonts.nunito(
                            color: Color(0xFF003049), fontSize: 20),
                      ),
                    ),
                    SizedBox(width: 50),
                    InkWell(
                        onTap: () {
                          itemScrollController.scrollTo(
                              index: 6, duration: Duration(seconds: 1));
                        },
                        onHover: (val) {
                          setState(() {
                            isHover = val;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                          decoration: BoxDecoration(
                            color: isHover
                                ? Color(0xFF003049)
                                : Colors.transparent,
                            border:
                                Border.all(width: 2, color: Color(0xFF003049)),
                          ),
                          child: Text(
                            "Contact",
                            style: GoogleFonts.nunito(
                              color: isHover ? Colors.white : Color(0xFF003049),
                              fontSize: 20,
                            ),
                          ),
                        )),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

PreferredSize mobileBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // SizedBox(width: 20),
            InkWell(
              child: Text(
                "kc",
                style: GoogleFonts.novaRound(
                    color: Colors.grey[800], fontSize: 30),
              ),
            ),
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.menu, color: Colors.grey[800], size: 30),
              );
            })
          ]),
        ),
      ),
    ),
  );
}
