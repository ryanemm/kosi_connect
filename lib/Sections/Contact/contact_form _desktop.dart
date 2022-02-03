import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:kosi_connect/models/form_data.dart';
import 'package:kosi_connect/controllers/form_controller.dart';

enum Choice { website, mobileapp }

class ContactFormDesktop extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactFormDesktop> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Choice? _choice = Choice.mobileapp;

  //TextField controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController queryController = TextEditingController();

  // Method to Submit Feedback and save it in Google Sheets
  void _submitForm() {
    // Validate returns true if the form is valid, or false
    // otherwise.
    if (_formKey.currentState!.validate()) {
      // If the form is valid, proceed.
      FormData feedbackForm = FormData(nameController.text,
          emailController.text, mobileNoController.text, queryController.text);

      FormController formController = FormController();

      _showSnackbar("Submitting Feedback");

      // Submit 'feedbackForm' and save it in Google Sheets.
      formController.submitForm(feedbackForm, (String response) {
        print("Response: $response");
        if (response == FormController.STATUS_SUCCESS) {
          // Feedback is saved succesfully in Google Sheets.
          _showSnackbar("Feedback Submitted");
        } else {
          // Error Occurred while saving data in Google Sheets.
          _showSnackbar("Error Occurred!");
        }
      });
    }
  }

  _showSnackbar(String message) {
    final snackBar = SnackBar(content: Text(message));
    //_scaffoldKey.currentState..showSnackBar(snackBar);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      // padding: EdgeInsets.all(40),
      // width: double.infinity,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Drop us an enquiry, we will get back to you...",
              style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[800]),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(4, 7),
                    color: Colors.grey.shade300,
                    blurRadius: 5),
              ]),
              child: TextFormField(
                controller: nameController,
                textAlignVertical: TextAlignVertical.center,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Valid Name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Color(0xFF003049),
                  ),
                  hintText: "Name",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(4, 7),
                    color: Colors.grey.shade300,
                    blurRadius: 5),
              ]),
              child: TextFormField(
                controller: emailController,
                textAlignVertical: TextAlignVertical.center,
                validator: (value) {
                  if (!value!.contains("@")) {
                    return 'Enter Valid Email';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.email_outlined, color: Color(0xFF003049)),
                  hintText: "E-mail address",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(4, 7),
                    color: Colors.grey.shade300,
                    blurRadius: 5),
              ]),
              child: TextFormField(
                controller: mobileNoController,
                textAlignVertical: TextAlignVertical.center,
                validator: (value) {
                  if (value!.trim().length != 10) {
                    return 'Enter 10 Digit Mobile Number';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android_outlined,
                      color: Color(0xFF003049)),
                  hintText: "Cell number",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(4, 7),
                    color: Colors.grey.shade300,
                    blurRadius: 5),
              ]),
              child: TextFormField(
                controller: queryController,
                maxLines: 1,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Valid Feedback';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.text_fields, color: Color(0xFF003049)),
                  hintText: "What do you want to build?",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onLongPress: () {},
              onTap: _submitForm,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 7),
                          color: Colors.grey.shade400,
                          blurRadius: 5),
                    ],
                    gradient: LinearGradient(
                        colors: [Color(0xFFFFBF00), Colors.orange]),
                  ),
                  child: Text(
                    "SUBMIT",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF003049),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
