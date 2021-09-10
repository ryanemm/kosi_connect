import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:url_launcher/url_launcher.dart";

class SocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
              child: Image.asset("assets/images/logos/github.png", height: 40),
              onTap: () => launch("https://github.com/ryanemm")),
          SizedBox(height: 12),
          GestureDetector(
              child: Image.asset("assets/images/logos/twitter.png", height: 40),
              onTap: () => launch("https://twitter.com/EmasonRyan")),
          SizedBox(height: 12),
          GestureDetector(
              child:
                  Image.asset("assets/images/logos/instagram.png", height: 40),
              onTap: () =>
                  launch("https://www.linkedin.com/in/ryan-emason-678571213")),
          SizedBox(height: 5),
          Image.asset("assets/images/logos/line.png", height: 70)
        ],
      ),
    );
  }
}
