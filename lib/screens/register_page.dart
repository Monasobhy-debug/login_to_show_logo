import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_to_show_logo/componant/reusable_card.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:login_to_show_logo/screens/login_page.dart';
import 'package:login_to_show_logo/componant/bottom_button.dart';

TextEditingController fullNameController = TextEditingController();
TextEditingController phoneNumController = TextEditingController();
TextEditingController confirmPwdController = TextEditingController();

class MyRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: [
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 50.0,
                child: Text(
                  'Register to Flutter App',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ReusableCard(
                text: 'Full Name',
                controller: fullNameController,
                validationText: 'Enter your Name',
              ),
              SizedBox(
                height: 10.0,
              ),
              ReusableCard(
                text: 'Email',
                controller: emailController,
                validationText: 'please provide your email',
              ),
              SizedBox(
                height: 10.0,
              ),
              ReusableCard(
                text: 'Phone Number',
                controller: phoneNumController,
                validationText: 'please provide a phone number',
              ),
              SizedBox(
                height: 10.0,
              ),
              ReusableCard(
                validationText: 'please provide a password',
                text: 'Password',
                controller: pwdController,
                hint: true,
              ),
              SizedBox(
                height: 10.0,
              ),
              ReusableCard(
                validationText:
                    'the confirm Password confirmation dose not match ',
                text: 'confirm Password',
                controller: confirmPwdController,
                hint: true,
              ),
              SizedBox(
                height: 10.0,
              ),
              BottomButton(
                text: 'Register',
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                // width: 20.0,
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  'By registering you agree to terms & conditional '
                  'and privacy policy of the team ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
