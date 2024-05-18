import 'package:flutter/material.dart';
import 'package:plant/components/onboard1.dart';
import 'package:plant/pages/homepage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentStep = 1;
  void _next() {
    setState(() {
      if (_currentStep < 3) {
        _currentStep++;
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Homepage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: PageView(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (_currentStep == 1)
            Onboard1(
                textBoard: 'Welcome to my plant ',
                imgPath: 'assets/p1.png',
                next: _next),
          if (_currentStep == 2)
            Onboard1(
                textBoard: 'Please pour water ',
                imgPath: 'assets/p2.png',
                next: _next),
          if (_currentStep == 3)
            Onboard1(
                textBoard: 'Will you ? ',
                imgPath: 'assets/p3.png',
                next: _next),
        ],
      ),
    );
  }
}
