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
    image: "assets/images/web_dev_fill_1.png",
    info:
        "Designing and developing beautiful and functional websites. \nCreate an online home for your business to showcase\n your services and products.",
  ),
  Service(
    id: 3,
    title: "Mobile Apps",
    image: "assets/images/mobile_dev_fill_1.png",
    info:
        "Bringing your app idea to life. Have you thought of the next \n big thing? Or you want to simplify and automate",
  ),
  Service(
      id: 2,
      title: "Custom Software",
      image: "assets/images/custom_software_1.png",
      info:
          "Solutions that are tailored to your needs. From administration\n  and management software to automate your company's\n workflow to web based systems.  ")
];
