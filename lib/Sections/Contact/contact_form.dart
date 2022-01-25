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
      padding: EdgeInsets.all(40),
      // width: double.infinity,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            maxLines: 5,
            decoration: InputDecoration(
                hintText:
                    "Any additional details about the product you want will be helpful",
                border: InputBorder.none),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "First name", border: InputBorder.none),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Last name", border: InputBorder.none),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "e-mail address",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Cell number",
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
              borderRadius: BorderRadius.circular(5),
            ),
            child: (TextButton(
              child: Text(
                "Submit",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w300, color: Colors.white),
              ),
              onPressed: () {},
            )),
          )
        ],
      ),
    );
  }
}
