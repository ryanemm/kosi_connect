import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/Components/flat_button.dart';
import 'package:shape_of_view/shape_of_view.dart';

class ContactPageMobile extends StatefulWidget {
  @override
  _ContactPageMobileState createState() => _ContactPageMobileState();
}

class _ContactPageMobileState extends State<ContactPageMobile> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text("GET IN TOUCH",
              style: GoogleFonts.novaRound(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue)),
          backgroundColor: Colors.grey[900],
          elevation: 5.0,
          centerTitle: true),
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: _screenSize.height * 0.45,
            child: ShapeOfView(
              shape: DiagonalShape(
                  position: DiagonalPosition.Bottom,
                  direction: DiagonalDirection.Right,
                  angle: DiagonalAngle.deg(angle: 4)),
              elevation: 12,
              child: Container(
                width: double.infinity,
                //color: Colors.grey[900],
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.grey.shade900, Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
                padding: EdgeInsets.only(bottom: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Website Design & Development",
                          style: GoogleFonts.novaRound(
                              fontSize: 48,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ]),
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: _screenSize.width * 0.4,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Form(
                    child: Column(children: [
                      TextFormField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Enter your name",
                            prefixIcon: Icon(
                              Icons.person_rounded,
                              color: Colors.purple,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            labelText: "Email Address",
                            hintText: "Enter your email address",
                            prefixIcon:
                                Icon(Icons.email_rounded, color: Colors.purple),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    ]),
                  )),
              Container(
                  width: _screenSize.width * 0.4,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Form(
                    child: Column(children: [
                      TextFormField(
                        onChanged: (value) {},
                        maxLines: 5,
                        decoration: InputDecoration(
                            labelText: "Description",
                            hintText: "Describe your project",
                            alignLabelWithHint: true,
                            //helperText: "Keep it short",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    ]),
                  ))
            ],
          ),
          SizedBox(height: 40),
          Container(
              padding: EdgeInsets.only(bottom: 80),
              child: Center(
                  child: SimpleButton(
                      //padding: 80.0,
                      //shadowColor: Colors.grey.shade400,
                      text: "SUBMIT"))),
        ],
      ),
    );
  }
}
