import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String text;
  final bool hint;
  final String validationText;
  final TextEditingController controller;
  ReusableCard(
      {required this.text,
      this.hint = false,
      required this.controller,
      required this.validationText});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.grey),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return validationText;
            }
            // value!.length > 0 ? null : validationText;
          },
          controller: controller,
          textAlign: TextAlign.start,
          obscureText: hint,
        )
      ],
    );
  }
}
