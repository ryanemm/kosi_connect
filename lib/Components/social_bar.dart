import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:url_launcher/url_launcher.dart";

class SocialBar extends StatefulWidget {
  _SocialBarState createState() => _SocialBarState();
}

class _SocialBarState extends State<SocialBar> {
  bool isHoverGithub = false;
  bool isHoverTwitter = false;
  bool isHoverLinkedin = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AnimatedContainer(
            height: 70,
            width: 70,
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.all(isHoverGithub ? 0 : 20),
            child: InkWell(
              child:
                  Image.asset("assets/images/logos/facebook.png", height: 50),
              onTap: () => launch("https://github.com/ryanemm"),
              onHover: (val) {
                setState(() {
                  isHoverGithub = val;
                });
              },
            ),
          ),
          AnimatedContainer(
            height: 70,
            width: 70,
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.all(isHoverTwitter ? 0 : 20),
            child: InkWell(
                child: Image.asset("assets/images/logos/twitter.png"),
                onTap: () => launch("https://twitter.com/EmasonRyan"),
                onHover: (val) {
                  setState(() {
                    isHoverTwitter = val;
                  });
                }),
          ),
          AnimatedContainer(
            height: 70,
            width: 70,
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.all(isHoverLinkedin ? 0 : 20),
            child: InkWell(
                child: Image.asset("assets/images/logos/instagram.png",
                    height: 40),
                onTap: () =>
                    launch("https://www.linkedin.com/in/ryan-emason-678571213"),
                onHover: (val) {
                  setState(() {
                    isHoverLinkedin = val;
                  });
                }),
          ),
          SizedBox(height: 12),
          Container(
            height: 70,
            width: 4,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3), topRight: Radius.circular(3))),
          )
        ],
      ),
    );
  }
}
