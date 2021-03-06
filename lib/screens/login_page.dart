import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_to_show_logo/componant/bottom_button.dart';
import 'package:login_to_show_logo/componant/reusable_card.dart';
import 'package:login_to_show_logo/widget/form.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:login_to_show_logo/screens/register_page.dart';
import 'package:login_to_show_logo/componant/register_ways_container.dart';

import 'logo_page.dart';

SharedPreferences? localStorage;
TextEditingController emailController = TextEditingController();
TextEditingController pwdController = TextEditingController();

class MyLoginPage extends StatelessWidget {
  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: Container(
                  height: 90.0,
                  width: 140.0,
                  child: Image.asset(
                    'images/Google-flutter-logo.svg.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RegisterWaysContainer(
                      widget: Icon(
                        Icons.facebook,
                        color: Colors.blueAccent,
                      ),
                      text: 'Facebook'),
                  RegisterWaysContainer(
                      widget: Container(
                        height: 20.0,
                        width: 30.0,
                        child: Image.asset(
                          'images/google.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      text: 'Google')
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'or',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              MyCustomForm(
                widget: Column(
                  children: [
                    ReusableCard(
                      validationText: 'please provide an email',
                      controller: emailController,
                      text: 'Email ID',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ReusableCard(
                      validationText: 'please provide a password',
                      controller: pwdController,
                      text: 'Password',
                      hint: true,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Forgot Password?',
                textAlign: TextAlign.end,
              ),
              SizedBox(
                height: 20.0,
              ),
              BottomButton(text: 'Login'),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyRegisterPage()));
                },
                child: Text(
                  'Don\'t have on account? Register Now',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  save() async {
    bool valid = _formKey.currentState!.validate();
    if (valid) {
      await MyLoginPage.init();
      localStorage!.setString('Email ID', emailController.text.toString());
      // print(emailController);
      localStorage!.setString('Password', pwdController.text.toString());
      // print(pwdController);
      localStorage!
          .setInt('Phone Number', int.parse(phoneNumController.toString()));
      localStorage!.setString('Full Name', fullNameController.text.toString());
      localStorage!
          .setString('confirm Password', pwdController.text.toString());
      _formKey.currentState!.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogoPage()));
    } else
      return;
  }

  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey, child: widget);
  }
}
