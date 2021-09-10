import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:flutter/src/material/stepper.dart";

enum Choice { website, mobileapp }
enum Types { onlineShop, blog, business, personal }

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  Choice? _choice = Choice.mobileapp;
  Types? _types = Types.business;
  //StepState _state = StepState.indexed;

  late int _index;
  late List<StepState> _listState;
  late bool isActive;

  @override
  initState() {
    _index = 0;
    _listState = [
      StepState.indexed,
      StepState.editing,
      StepState.complete,
    ];
    super.initState();
  }

  List<Step> _createSteps(BuildContext context) {
    List<Step> _steps = [
      Step(
        title: const Text("Type"),
        state: _index == 0
            ? _listState[1]
            : _index > 0
                ? _listState[2]
                : _listState[0],
        isActive: _index == 0 ? true : false,
        content: Container(
          alignment: Alignment.centerLeft,
          child: Column(children: [
            ListTile(
              title: const Text("Mobile App"),
              leading: Radio<Choice>(
                value: Choice.mobileapp,
                groupValue: _choice,
                onChanged: (Choice? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Website"),
              leading: Radio<Choice>(
                value: Choice.website,
                groupValue: _choice,
                onChanged: (Choice? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            )
          ]),
        ),
      ),
      Step(
          title: Text("Industry"),
          state: _index == 1
              ? _listState[1]
              : _index > 1
                  ? _listState[2]
                  : _listState[0],
          isActive: _index == 1 ? true : false,
          //isActive: true,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                ListTile(
                  title: const Text("Business"),
                  leading: Radio<Types>(
                    value: Types.business,
                    groupValue: _types,
                    onChanged: (Types? value) {
                      setState(() {
                        _types = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Online Shop"),
                  leading: Radio<Types>(
                    value: Types.onlineShop,
                    groupValue: _types,
                    onChanged: (Types? value) {
                      setState(() {
                        _types = value;
                      });
                    },
                  ),
                )
              ]),
              /*Column(
                  children: [
                    ListTile(
                      title: const Text("Personal"),
                      leading: Radio<Types>(
                        value: Types.personal,
                        groupValue: _types,
                        onChanged: (Types? value) {
                          setState(() {
                            _types = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text("Blog"),
                      leading: Radio<Types>(
                        value: Types.blog,
                        groupValue: _types,
                        onChanged: (Types? value) {
                          setState(() {
                            _types = value;
                          });
                        },
                      ),
                    )
                  ],
                )*/
            ],
          )),
      Step(
          title: Text("Description"),
          state: _index == 2
              ? _listState[1]
              : _index > 2
                  ? _listState[2]
                  : _listState[0],
          isActive: _index == 2 ? true : false,
          content: TextField(
            keyboardType: TextInputType.text,
            maxLines: 5,
          )),
      Step(
        title: Text("Personal details"),
        state: _index == 3
            ? _listState[1]
            : _index > 3
                ? _listState[2]
                : _listState[0],
        isActive: _index == 3 ? true : false,
        content: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "First name",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 3),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Last name",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 3),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
      ),
      Step(
        title: Text("Contacts"),
        state: _index == 4
            ? _listState[1]
            : _index > 4
                ? _listState[2]
                : _listState[0],
        isActive: _index == 4 ? true : false,
        content: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "e-mail address",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 3),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Cell number",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 3),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
      )
    ];
    return _steps;
  }

  @override
  Widget build(BuildContext context) {
    List<Step> _stepList = _createSteps(context);

    return Stepper(
      type: StepperType.horizontal,
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index < _stepList.length - 1) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
          //_state = StepState.editing;
        });
      },
      steps: _stepList,
      controlsBuilder: (BuildContext context,
          {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
        return Row(
          children: [
            SizedBox(height: 70),
            Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
                borderRadius: BorderRadius.circular(8),
              ),
              child: (TextButton(
                child: Text(
                  "Next",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w300, color: Colors.white),
                ),
                onPressed: onStepContinue,
              )),
            ),
            SizedBox(width: 30),
            Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
                borderRadius: BorderRadius.circular(8),
              ),
              child: (TextButton(
                child: Text(
                  "Back",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w300, color: Colors.white),
                ),
                onPressed: onStepCancel,
              )),
            ),
          ],
        );
      },
    );
  }
}
