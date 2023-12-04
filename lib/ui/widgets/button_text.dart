import 'package:flutter/material.dart';
import 'package:ecommerce/shared/theme.dart';

class ButtonText extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  ButtonText({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          text,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
