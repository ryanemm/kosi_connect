import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:outline_gradient_button/outline_gradient_button.dart";
import "package:kosi_connect/models/services.dart";

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            padding: EdgeInsets.all(15),
            height: 380,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(-3, -3),
                  blurRadius: 10,
                  color: Colors.grey.shade200,
                ),
                BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 10,
                  color: Colors.grey.shade200,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  services[widget.index].image,
                  height: 60,
                ),
                SizedBox(height: 10),
                Text(
                  services[widget.index].title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.novaRound(fontSize: 30),
                ),
                SizedBox(height: 10),
                Text(
                  services[widget.index].info,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(fontSize: 20),
                ),
                SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purpleAccent]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Enquire",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
