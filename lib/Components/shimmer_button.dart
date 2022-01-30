import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShimmerButton extends StatefulWidget {
  const ShimmerButton({Key? key, this.buttonText = "Enquire"})
      : super(key: key);

  final String buttonText;

  @override
  _ShimmerButtonState createState() => _ShimmerButtonState();
}

class _ShimmerButtonState extends State<ShimmerButton> {
  String buttonText = ShimmerButton().buttonText;

  bool _isHover = false;
  @override
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
                  ? LinearGradient(
                      colors: [Color(0xFFFFBF00), Colors.yellowAccent])
                  : LinearGradient(
                      colors: [Colors.yellowAccent, Color(0xFFFFBF00)]),
              boxShadow: [
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
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                buttonText,
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
