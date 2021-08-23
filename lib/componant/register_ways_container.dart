import 'package:flutter/material.dart';

class RegisterWaysContainer extends StatelessWidget {
  final String text;
  final Widget widget;
  RegisterWaysContainer({required this.widget, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        width: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.lightBlueAccent, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            widget,
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ));
  }
}
