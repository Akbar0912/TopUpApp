import 'package:ecommerce/shared/theme.dart';
import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  final String title;

  const TitlePage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: blackTextStyle.copyWith(
        fontSize: 20,
        fontWeight: semiBold,
      ),
    );
  }
}
