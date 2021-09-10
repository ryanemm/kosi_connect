import "package:flutter/material.dart";

class Service {
  final int id;
  final String title, image, info;

  Service(
      {required this.id,
      required this.image,
      required this.title,
      required this.info});
}

//demo list services offered
List<Service> services = [
  Service(
    id: 1,
    title: "Web Development",
    image: "assets/images/web_dev_fill.png",
    info:
        "Designing and developing beautiful and functional websites. \nCreate an online home for your business to showcase\n your services and products.",
  ),
  Service(
    id: 2,
    title: "Mobile Development",
    image: "assets/images/mobile_dev_fill.png",
    info:
        "Bringing your app idea to life. Have you thought of the next \n big thing? Or you want to simplify and automate \n a business process?",
  ),
];
