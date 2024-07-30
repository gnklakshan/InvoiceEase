import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 243, 175, 204),
          child: Center(
            child: Image.asset(
              "./assets/images/logo.png",
              width: 250,
              height: 250,
            ),
          ),
        ),
      ),
    );
  }
}
