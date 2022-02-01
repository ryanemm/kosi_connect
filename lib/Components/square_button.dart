import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../home_screen.dart';

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
  ItemScrollController scrollController = SmallScreen.itemScrollController;
  bool _isHover = false;
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: InkWell(
        onTap: () {
          scrollController.scrollTo(index: 1, duration: Duration(seconds: 1));
        },
        onHover: (val) {
          setState(() {
            _isHover = val;
          });
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            padding: EdgeInsets.symmetric(horizontal: 20),
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
            child: Text(
              "ABOUT US",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF003049),
                  fontSize: 18),
            )),
      ),
    );
  }
}
