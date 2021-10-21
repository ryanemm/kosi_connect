import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Mobile/project_card_mobile.dart';
import 'package:kosi_connect/Sections/RecentWork/Components/Mobile/project_card_website.dart';
import "package:shape_of_view/shape_of_view.dart";

class RecentWorkMobile extends StatefulWidget {
  @override
  _RecentWorkMobileState createState() => _RecentWorkMobileState();
}

class _RecentWorkMobileState extends State<RecentWorkMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
        color: Colors.white,
        child: ShapeOfView(
            elevation: 6,
            shape: ArcShape(
                position: ArcPosition.Bottom,
                direction: ArcDirection.Outside,
                height: 40,),

            child: Container(
              color: Colors.grey[200],
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center( child:
                    AnimatedTextKit(
                    totalRepeatCount: 10,
                    animatedTexts: [
                      TypewriterAnimatedText("<recent work>",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.nunito(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 50)))
                    ],
                  ),),
                  SizedBox(height: 30),
                  ProjectCardWebsite(),
                  Container(
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      decoration: BoxDecoration(color: Colors.grey[400])),
                  ProjectCardMobile()
                ],
              ),
            )));
  }
}
