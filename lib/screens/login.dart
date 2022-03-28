import 'package:flutter/material.dart';
import 'package:super_list/components/app_title.dart';
import 'package:super_list/components/custom_button.dart';
import 'package:super_list/components/input_login.dart';
import 'package:super_list/constants.dart';
import 'package:super_list/screens/lists.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 64.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppTitle(text: 'Super List'),
                const InputLogin(
                  label: 'Login',
                  textType: TextInputType.emailAddress,
                ),
                const InputLogin(
                    label: 'Password',
                    textType: TextInputType.text,
                    obscureText: true),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    // TODO validate user
                    Navigator.pushNamedAndRemoveUntil(
                        context, ListsScreen.route, (_) => false);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      InkWell(
                        child: Text(
                          'Sign Up',
                          softWrap: true,
                        ),
                      ),
                      InkWell(
                        child: Text('Forgot password'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
