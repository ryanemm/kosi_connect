import "package:flutter/material.dart";
import 'package:kosi_connect/Sections/Testimonials/testimonials_desktop.dart';
import 'package:kosi_connect/Sections/Testimonials/testimonials_mobile.dart';

class Testimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    Widget _child;
    if (isLandscape) {
      _child = TestimonialsDesktop();
    } else {
      _child = TestimonialsMobile();
    }
    return _child;
  }
}
