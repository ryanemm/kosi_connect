import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SquareButton extends StatefulWidget {
  const SquareButton({
    Key? key,
    this.text = "Button",
    this.ftSize = 16.0,
  }) : super(key: key);

  final String text;
  final double ftSize;

  @override
  _SquareButtonState createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  bool _isHover = false;
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        onHover: (val) {
          setState(() {
            _isHover = val;
          });
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            padding: EdgeInsets.only(bottom: 6, top: 6, left: 50, right: 50),
            decoration: BoxDecoration(
              gradient: _isHover
                  ? LinearGradient(colors: [Colors.white, Colors.white])
                  : LinearGradient(colors: [Colors.white, Colors.white]),
              /*boxShadow: [
                _isHover
                    ? BoxShadow(
                        offset: Offset(4, 8),
                        color: Colors.grey.shade400,
                        blurRadius: 5,
                        spreadRadius: 2)
                    : BoxShadow(
                        offset: Offset(2, 4),
                        color: Colors.grey.shade400,
                        blurRadius: 5,
                        spreadRadius: 2)
              ],*/
              /*boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.grey.shade600,
                    blurRadius: 5,
                    spreadRadius: 0)
              ],*/
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "ABOUT US",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF003049),
                    fontSize: 18),
              ),
            )),
      ),
    );
  }
}
