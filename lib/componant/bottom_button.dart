import 'package:flutter/material.dart';
import 'package:login_to_show_logo/componant/save_data.dart';
import 'package:login_to_show_logo/screens/login_page.dart';
import 'package:login_to_show_logo/screens/logo_page.dart';
import 'package:login_to_show_logo/widget/form.dart';

class BottomButton extends StatelessWidget {
  final String text;
  BottomButton({required this.text});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
      ),
      onPressed: () {
        MyCustomFormState().save();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Processing Data')),
        );
      },
      child: Text(text, textAlign: TextAlign.center),
    );
  }
}
//
// save() async {
//   await MyLoginPage.init();
//   localStorage.setString('Email ID', emailController.text.toString());
//   print(emailController);
//   localStorage.setString('Password', pwdController.text.toString());
//   print(pwdController);
// }
