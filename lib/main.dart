import 'package:flutter/material.dart';
import 'package:super_list/screens/lists.dart';
import 'package:super_list/screens/login.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.route,
      routes: {
        LoginScreen.route: (context) => const LoginScreen(),
        ListsScreen.route: (context) => const ListsScreen(),
      },
    );
  }
}
