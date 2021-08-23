import 'package:login_to_show_logo/screens/login_page.dart';

class User {
  late String name;
  late String email;
  late int phoneNumber;
  late String password;
  static save() async {
    await MyLoginPage.init();
    localStorage.setString('Email ID', emailController.text.toString());
    print(emailController);
    localStorage.setString('Password', pwdController.text.toString());
    print(pwdController);
  }
}
