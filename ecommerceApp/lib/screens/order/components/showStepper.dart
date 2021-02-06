import 'package:flutter/material.dart';

import '../../../constants.dart';

class ShowStepper extends StatefulWidget {
  @override
  _ShowStepperState createState() => new _ShowStepperState();
}

class _ShowStepperState extends State<ShowStepper> {
  List<Step> steps = [
    Step(
      title: const Text('New Account'),
      isActive:  true,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    ),
    Step(
      title: const Text('Address'),
      isActive:  false,
      state: StepState.editing,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Post Code'),
          ),
        ],
      ),
    ),
    Step(
      title: const Text('Avatar'),
      isActive:  false,
      state: StepState.error,
      subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ],
      ),
    ),
  ];

  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return           Expanded(
      child: Stepper(
        steps: steps,
        currentStep: currentStep,
        onStepContinue: next,
        onStepCancel: cancel,
        onStepTapped: (step) => goTo(step),
      ),
    );
  }
}