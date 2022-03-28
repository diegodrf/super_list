import 'package:flutter/material.dart';

class AppTitle extends StatefulWidget {
  final String text;
  const AppTitle({Key? key, required this.text}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceOut,
    );

    _animationController.addListener(() => setState(() {}));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Opacity(
      opacity: _animation.value,
      child: Text(
        'Super List',
        style: TextStyle(
          fontSize: mediaQueryData.size.height * 0.1,
          wordSpacing: 5.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
