import 'package:flutter/material.dart';

class ListsScreen extends StatelessWidget {
  static const String route = 'lists_screen';
  const ListsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Lists'),
          centerTitle: true,
        ),
        body: Container(),
      ),
    );
  }
}
