import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  // ignore: prefer_typing_uninitialized_variables
  final onPress;

  const PrimaryButton({Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: primaryColor,
        onSurface: Colors.red,
      ),
      onPressed: onPress,
      child: Text(title),
    );
  }
}
