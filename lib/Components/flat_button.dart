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
      width: 100,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: (TextButton(
        child: Text(
          text,
          style: GoogleFonts.nunito(
              fontSize: ftSize,
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
        onPressed: () {},
      )),
    );
  }
}
