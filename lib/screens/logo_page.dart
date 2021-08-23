import 'package:flutter/material.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage('images/flutterLogo.png'),
        ),
      ),
    );
  }
}
