import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/left_text_component.dart';
import 'package:owlhero/components/text_component.dart';

class OwlForm extends StatefulWidget {
  @override
  _OwlFormState createState() => _OwlFormState();
}

class _OwlFormState extends State<OwlForm> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors.appDarkTeal,
      body: Container(
//        color: _colors.appLBlack,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 46),
              child: TextComponent("Complete form", 36, _colors.appBeige, true),
            ),
            Expanded(
              child: Stepper(
                type: stepperType,
                physics: ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: LeftTextComponent("Full Name", 20, Colors.white),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Type here'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: LeftTextComponent(
                        "What would you need help with?", 20, Colors.white),
                    content: Column(
                      children: [
                        CheckboxListTile(
                          title: LeftTextComponent(
                              "Donate Supplies", 20, Colors.white),
                          value: true,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: LeftTextComponent(
                              "Teaching Assistant", 20, Colors.white),
                          value: false,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: LeftTextComponent(
                              "Build Curriculum", 20, Colors.white),
                          value: false,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: LeftTextComponent(
                              "Personalized tutoring", 20, Colors.white),
                          value: false,
                          onChanged: null,
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: LeftTextComponent(
                        "Which grades would you need help on?",
                        20,
                        Colors.white),
                    content: Column(
                      children: [
                        CheckboxListTile(
                          title: LeftTextComponent(
                              "Pre-K/Kindergarten", 20, Colors.white),
                          value: true,
                          checkColor: Colors.white,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: LeftTextComponent(
                              "1st-2nd grade", 20, Colors.white),
                          value: false,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: LeftTextComponent(
                              "3rd-4th grade", 20, Colors.white),
                          value: false,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: LeftTextComponent(
                              "5th-6th grade", 20, Colors.white),
                          value: false,
                          onChanged: null,
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: LeftTextComponent("Availability", 20, Colors.white),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Type here'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 3
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: LeftTextComponent("Biography", 20, Colors.white),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Type here'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 4
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: LeftTextComponent(
                        "Add your social media url", 20, Colors.white),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'url'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 5
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    if (_currentStep < 5) {
      setState(() => _currentStep += 1);
    } else {
      print("Navigate to next page");
    }
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
