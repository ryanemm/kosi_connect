import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    Key? key,
    this.text = "Button",
    this.ftSize = 16.0,
  }) : super(key: key);

  final String text;
  final double ftSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: (TextButton(
        child: Text(text,
            style: GoogleFonts.nunito(
              fontSize: ftSize,
              fontWeight: FontWeight.w600,
              color: Color(0xFF003049),
            )),
        onPressed: () {},
      )),
    );
  }
}
