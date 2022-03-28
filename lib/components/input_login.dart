import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  final String label;
  final TextInputType textType;
  final bool obscureText;
  final void Function(String)? onSubmitted;

  const InputLogin({
    Key? key,
    required this.label,
    required this.textType,
    this.onSubmitted,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
            child: Text(
              label,
              textAlign: TextAlign.start,
            ),
          ),
          TextField(
            keyboardType: textType,
            obscureText: obscureText,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(60.0)),
              ),
            ),
            onSubmitted: onSubmitted,
          ),
        ],
      ),
    );
  }
}
