import 'package:ecommerce/shared/theme.dart';
import 'package:ecommerce/ui/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class PagesSuccess extends StatelessWidget {
  const PagesSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun anda\nberhasil dibuat',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Temukan berbagai promo\nmenarik di dalamnya',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              width: 183,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign-in',
                  (route) => false,
                );
              },
              text: 'Masuk',
            ),
          ],
        ),
      ),
    );
  }
}
