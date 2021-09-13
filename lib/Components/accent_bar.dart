import "package:flutter/material.dart";

class AccentBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFFFBF00), Colors.orange]),
        borderRadius: BorderRadius.circular(3.5),
      ),
    );
  }
}
