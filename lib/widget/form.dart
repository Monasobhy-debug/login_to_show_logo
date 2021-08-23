import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  MyCustomForm({required this.widget});
  final Widget widget;
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey, child: widget);
  }
}
