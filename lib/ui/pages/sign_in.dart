import 'package:ecommerce/shared/theme.dart';
import 'package:ecommerce/ui/widgets/button_text.dart';
import 'package:ecommerce/ui/widgets/custombutton.dart';
import 'package:ecommerce/ui/widgets/forms.dart';
import 'package:ecommerce/ui/widgets/title.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            Container(
              width: 155,
              height: 50,
              margin: const EdgeInsets.only(
                top: 100,
                bottom: 50,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo_light.png',
                  ),
                ),
              ),
            ),
            TitlePage(
              title: 'Sign In &\nGrow Your Finance',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(
                22,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE Input EMAIL
                  const CustomFromField(
                    title: 'Email Addtess',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // NOTE Input Password
                  CustomFromField(
                    title: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/sign-up-success', (route) => false);
                    },
                    text: 'Sign In',
                    buttonColor: purpleColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ButtonText(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              text: 'Create New Account',
            ),
          ]),
    );
  }
}
