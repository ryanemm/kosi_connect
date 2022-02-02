import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/models/form_data.dart';
import 'package:kosi_connect/controllers/form_controller.dart';

enum Choice { website, mobileapp }

class ContactFormDesktop extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactFormDesktop> {
  Choice? _choice = Choice.mobileapp;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      // padding: EdgeInsets.all(40),
      // width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Drop us an enquiry, we will get back to you...",
            style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey[800]),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset(4, 7),
                  color: Colors.grey.shade300,
                  blurRadius: 5),
            ]),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Color(0xFF003049),
                ),
                hintText: "First name",
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset(4, 7),
                  color: Colors.grey.shade300,
                  blurRadius: 5),
            ]),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Color(0xFF003049),
                ),
                hintText: "Last name",
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset(4, 7),
                  color: Colors.grey.shade300,
                  blurRadius: 5),
            ]),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.email_outlined, color: Color(0xFF003049)),
                hintText: "E-mail address",
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset(4, 7),
                  color: Colors.grey.shade300,
                  blurRadius: 5),
            ]),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_android_outlined,
                    color: Color(0xFF003049)),
                hintText: "Cell number",
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset(4, 7),
                  color: Colors.grey.shade300,
                  blurRadius: 5),
            ]),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.text_fields, color: Color(0xFF003049)),
                hintText: "What do you want to build?",
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 7),
                    color: Colors.grey.shade400,
                    blurRadius: 5),
              ],
              gradient:
                  LinearGradient(colors: [Color(0xFFFFBF00), Colors.orange]),
            ),
            child: (TextButton(
              child: Text(
                "SUBMIT",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF003049),
                ),
              ),
              onPressed: () {},
            )),
          )
        ],
      ),
    );
  }
}
