import 'package:flutter/material.dart';
import 'package:login_to_show_logo/screens/login_page.dart';
import 'package:login_to_show_logo/screens/logo_page.dart';
import 'package:login_to_show_logo/screens/register_page.dart';

class MyCustomForm extends StatefulWidget {
  MyCustomForm({required this.widget});
  final Widget widget;
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
//
// class MyCustomFormState extends State<MyCustomForm> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   save() async {
//     bool valid = _formKey.currentState!.validate();
//     if (valid) {
//       await MyLoginPage.init();
//       localStorage!.setString('Email ID', emailController.text.toString());
//       // print(emailController);
//       localStorage!.setString('Password', pwdController.text.toString());
//       // print(pwdController);
//       localStorage!
//           .setInt('Phone Number', int.parse(phoneNumController.toString()));
//       localStorage!.setString('Full Name', fullNameController.text.toString());
//       localStorage!
//           .setString('confirm Password', pwdController.text.toString());
//       _formKey.currentState!.save();
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => LogoPage()));
//     } else
//       return;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(key: _formKey, child: widget);
//   }
// }
