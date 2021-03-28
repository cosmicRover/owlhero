import 'package:flutter/material.dart';
import 'package:owlhero/app_constants/app_colors.dart';
import 'package:owlhero/components/form_text_component.dart';
import 'package:owlhero/components/left_text_component.dart';
import 'package:owlhero/components/text_component.dart';
import 'package:owlhero/screens/hero-swipe-view.dart';

class HeroForm extends StatefulWidget {
  @override
  _HeroFormState createState() => _HeroFormState();
}

class _HeroFormState extends State<HeroForm> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors.appDarkTeal,
      body: Container(
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
                    title: FormTextComponent(
                        "Full Name", 20, Colors.white, true, FontWeight.w600),
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
                    title: FormTextComponent("How would you like to help?", 20,
                        Colors.white, true, FontWeight.w600),
                    content: Column(
                      children: [
                        CheckboxListTile(
                          title: FormTextComponent("Donate Supplies", 20,
                              Colors.white, true, FontWeight.w400),
                          value: true,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: FormTextComponent("Teaching Assistant", 20,
                              Colors.white, true, FontWeight.w400),
                          value: false,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: FormTextComponent("Build Curriculum", 20,
                              Colors.white, true, FontWeight.w400),
                          value: false,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: FormTextComponent("Personalized tutoring", 20,
                              Colors.white, true, FontWeight.w400),
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
                    title: FormTextComponent(
                        "Which grades would you like to work with?",
                        20,
                        Colors.white,
                        true,
                        FontWeight.w600),
                    content: Column(
                      children: [
                        CheckboxListTile(
                          title: FormTextComponent("Pre-K/Kindergarten", 20,
                              Colors.white, true, FontWeight.w400),
                          value: true,
                          checkColor: Colors.white,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: FormTextComponent("1st-2nd grade", 20,
                              Colors.white, true, FontWeight.w400),
                          value: false,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: FormTextComponent("3rd-4th grade", 20,
                              Colors.white, true, FontWeight.w400),
                          value: false,
                          onChanged: null,
                        ),
                        CheckboxListTile(
                          title: FormTextComponent("5th-6th grade", 20,
                              Colors.white, true, FontWeight.w400),
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
                    title: FormTextComponent("Availability", 20, Colors.white,
                        true, FontWeight.w600),
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
                    title: FormTextComponent(
                        "Biography", 20, Colors.white, true, FontWeight.w600),
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
                    title: FormTextComponent("Add your social media url", 20,
                        Colors.white, true, FontWeight.w600),
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
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HeroSwipeView()));
    }
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
