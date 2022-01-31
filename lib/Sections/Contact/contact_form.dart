import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

enum Choice { website, mobileapp }

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  Choice? _choice = Choice.mobileapp;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(40),
      // width: double.infinity,
      child: Column(
        children: [
          Text(
            "Drop us an enquiry, we will get back to you...",
            style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey[800]),
          ),
          SizedBox(height: 20),
          TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xFF003049),
              ),
              hintText: "First name",
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 15),
          TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person, color: Color(0xFF003049)),
              hintText: "Last name",
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 15),
          TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email, color: Color(0xFF003049)),
              hintText: "E-mail address",
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 15),
          TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone_android, color: Color(0xFF003049)),
              hintText: "Cell number",
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 15),
          TextField(
            maxLines: 1,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.text_fields, color: Color(0xFF003049)),
              hintText: "What do you want to build?",
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.grey.shade600,
                    blurRadius: 5,
                    spreadRadius: 0)
              ],
              gradient:
                  LinearGradient(colors: [Color(0xFFFFBF00), Colors.orange]),
            ),
            child: (TextButton(
              child: Text(
                "Submit",
                style: GoogleFonts.raleway(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
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
