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
      width: double.infinity,
      child: Column(
        children: [
          /*Row(
          mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text("Mobile App"),
                leading: Radio<Choice>(
                  value: Choice.mobileapp,
                  groupValue: _choice,
                  onChanged: (Choice? value) {
                    setState(() {
                      _choice = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Website"),
                leading: Radio<Choice>(
                  value: Choice.website,
                  groupValue: _choice,
                  onChanged: (Choice? value) {
                    setState(() {
                      _choice = value;
                    });
                  },
                ),
              )
            ],
          ),*/
          TextFormField(
            keyboardType: TextInputType.text,
            maxLines: 5,
            decoration: InputDecoration(
                hintText:
                    "Any additional details about the product you want will be helpful",
                border: InputBorder.none),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "First name", border: InputBorder.none),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Last name", border: InputBorder.none),
              ),
            ],
          ),
          Row(
            children: [
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
            ],
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
