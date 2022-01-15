import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/utils/responsiveLayout.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: DesktopBar(),
        mediumScreen: MobileBar(),
        smallScreen: MobileBar());
  }
}

class DesktopBar extends StatefulWidget {
  const DesktopBar({Key? key}) : super(key: key);

  @override
  _DesktopBarState createState() => _DesktopBarState();
}

class _DesktopBarState extends State<DesktopBar> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(children: [
            SizedBox(width: 20),
            Expanded(
                flex: 1,
                child: InkWell(
                  child: Image.asset("assets/images/company_logo_hero.png",
                      height: 100),
                )),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Services",
                    style: GoogleFonts.nunito(
                        color: Color(0xFF003049), fontSize: 20),
                  ),
                  SizedBox(width: 50),
                  InkWell(
                      onTap: () {},
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
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
    );
  }
}

class MobileBar extends StatefulWidget {
  const MobileBar({Key? key}) : super(key: key);

  @override
  _MobileBarState createState() => _MobileBarState();
}

class _MobileBarState extends State<MobileBar> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // SizedBox(width: 20),
            InkWell(
              child: Text(
                "</r>",
                style: GoogleFonts.nunito(color: Colors.black, fontSize: 48),
              ),
            ),
            Icon(
              Icons.menu,
            )
          ]),
        ),
      ),
    );
  }
}
