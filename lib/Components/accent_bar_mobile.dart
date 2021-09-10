import "package:flutter/material.dart";

class AccentBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
        borderRadius: BorderRadius.circular(3.5),
      ),
    );
  }
}
